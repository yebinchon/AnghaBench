
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;
typedef int VividasDemuxContext ;
struct TYPE_7__ {int extradata_size; int* extradata; void* sample_rate; void* channels; int codec_id; int codec_type; void* height; void* width; } ;
struct TYPE_5__ {void* den; void* num; } ;
struct TYPE_6__ {int id; TYPE_3__* codecpar; void* nb_frames; TYPE_1__ time_base; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_VORBIS ;
 int AV_CODEC_ID_VP6 ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int INT_MAX ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int av_free (int *) ;
 int av_freep (int**) ;
 int av_log (int *,int ,char*,int) ;
 unsigned int av_xiphlacing (int*,int) ;
 TYPE_2__* avformat_new_stream (int *,int *) ;
 int * avio_alloc_context (int*,int,int ,int *,int *,int *,int *) ;
 int avio_r8 (int *) ;
 int avio_read (int *,int*,int) ;
 void* avio_rl16 (int *) ;
 void* avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 scalar_t__ ff_alloc_extradata (TYPE_3__*,int) ;
 int ffio_read_varlen (int *) ;

__attribute__((used)) static int track_header(VividasDemuxContext *viv, AVFormatContext *s, uint8_t *buf, int size)
{
    int i,j;
    int64_t off;
    int val_1;
    int num_video, num_audio;
    AVIOContext *pb;

    pb = avio_alloc_context(buf, size, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (!pb)
        return AVERROR(ENOMEM);

    ffio_read_varlen(pb);
    avio_r8(pb);

    val_1 = ffio_read_varlen(pb);

    for (i=0;i<val_1;i++) {
        int c = avio_r8(pb);
        for (j=0;j<c;j++) {
            avio_r8(pb);
            avio_r8(pb);
        }
    }

    avio_r8(pb);

    off = avio_tell(pb);
    off += ffio_read_varlen(pb);

    avio_r8(pb);
    num_video = avio_r8(pb);

    avio_seek(pb, off, SEEK_SET);
    if (num_video != 1)
        av_log(s, AV_LOG_WARNING, "number of video tracks %d is not 1\n", num_video);

    for (i = 0; i < num_video; i++) {
        AVStream *st = avformat_new_stream(s, ((void*)0));

        st->id = i;

        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        st->codecpar->codec_id = AV_CODEC_ID_VP6;

        off = avio_tell(pb);
        off += ffio_read_varlen(pb);
        avio_r8(pb);
        avio_r8(pb);
        st->time_base.num = avio_rl32(pb);
        st->time_base.den = avio_rl32(pb);
        st->nb_frames = avio_rl32(pb);
        st->codecpar->width = avio_rl16(pb);
        st->codecpar->height = avio_rl16(pb);
        avio_r8(pb);
        avio_rl32(pb);

        avio_seek(pb, off, SEEK_SET);
    }

    off = avio_tell(pb);
    off += ffio_read_varlen(pb);
    avio_r8(pb);
    num_audio = avio_r8(pb);
    avio_seek(pb, off, SEEK_SET);

    if (num_audio != 1)
        av_log(s, AV_LOG_WARNING, "number of audio tracks %d is not 1\n", num_audio);

    for(i=0;i<num_audio;i++) {
        int q;
        AVStream *st = avformat_new_stream(s, ((void*)0));

        st->id = num_video + i;

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = AV_CODEC_ID_VORBIS;

        off = avio_tell(pb);
        off += ffio_read_varlen(pb);
        avio_r8(pb);
        avio_r8(pb);
        avio_rl16(pb);
        st->codecpar->channels = avio_rl16(pb);
        st->codecpar->sample_rate = avio_rl32(pb);
        avio_seek(pb, 10, SEEK_CUR);
        q = avio_r8(pb);
        avio_seek(pb, q, SEEK_CUR);
        avio_r8(pb);

        if (avio_tell(pb) < off) {
            int num_data;
            int xd_size = 0;
            int data_len[256];
            int offset = 1;
            uint8_t *p;
            ffio_read_varlen(pb);
            avio_r8(pb);
            ffio_read_varlen(pb);
            num_data = avio_r8(pb);
            for (j = 0; j < num_data; j++) {
                uint64_t len = ffio_read_varlen(pb);
                if (len > INT_MAX/2 - xd_size) {
                    av_free(pb);
                    return AVERROR_INVALIDDATA;
                }
                data_len[j] = len;
                xd_size += len;
            }

            st->codecpar->extradata_size = 64 + xd_size + xd_size / 255;
            if (ff_alloc_extradata(st->codecpar, st->codecpar->extradata_size)) {
                av_free(pb);
                return AVERROR(ENOMEM);
            }

            p = st->codecpar->extradata;
            p[0] = 2;

            for (j = 0; j < num_data - 1; j++) {
                unsigned delta = av_xiphlacing(&p[offset], data_len[j]);
                if (delta > data_len[j]) {
                    av_free(pb);
                    return AVERROR_INVALIDDATA;
                }
                offset += delta;
            }

            for (j = 0; j < num_data; j++) {
                int ret = avio_read(pb, &p[offset], data_len[j]);
                if (ret < data_len[j]) {
                    st->codecpar->extradata_size = 0;
                    av_freep(&st->codecpar->extradata);
                    break;
                }
                offset += data_len[j];
            }

            if (offset < st->codecpar->extradata_size)
                st->codecpar->extradata_size = offset;
        }
    }

    av_free(pb);
    return 0;
}
