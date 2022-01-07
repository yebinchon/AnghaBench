
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
typedef enum TAKMetaDataType { ____Placeholder_TAKMetaDataType } TAKMetaDataType ;
struct TYPE_30__ {int error_recognition; TYPE_5__* pb; TYPE_3__* priv_data; } ;
struct TYPE_29__ {int seekable; } ;
struct TYPE_28__ {scalar_t__ duration; TYPE_1__* codecpar; scalar_t__ start_time; int need_parsing; } ;
struct TYPE_27__ {int mlast_frame; scalar_t__ data_end; } ;
struct TYPE_26__ {scalar_t__ samples; int channels; int sample_rate; scalar_t__ ch_layout; int bps; } ;
struct TYPE_25__ {int* extradata; int extradata_size; int sample_rate; int channels; scalar_t__ channel_layout; int bits_per_coded_sample; int codec_id; int codec_type; } ;
typedef TYPE_2__ TAKStreamInfo ;
typedef TYPE_3__ TAKDemuxContext ;
typedef int GetBitContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVSTREAM_PARSE_FULL_RAW ;
 int AV_CODEC_ID_TAK ;
 int AV_EF_EXPLODE ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int TAK_ENCODER_VERSION_BITS ;
 int TAK_LAST_FRAME_POS_BITS ;
 int TAK_LAST_FRAME_SIZE_BITS ;





 int av_freep (int**) ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 int* av_malloc (int ) ;
 TYPE_4__* avformat_new_stream (TYPE_6__*,int ) ;
 int avio_feof (TYPE_5__*) ;
 int avio_r8 (TYPE_5__*) ;
 int avio_rb24 (TYPE_5__*) ;
 int avio_read (TYPE_5__*,int*,int) ;
 int avio_rl24 (TYPE_5__*) ;
 scalar_t__ avio_rl32 (TYPE_5__*) ;
 int avio_seek (TYPE_5__*,int,int ) ;
 int avio_skip (TYPE_5__*,int) ;
 int avio_tell (TYPE_5__*) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int ) ;
 int avpriv_tak_parse_streaminfo (TYPE_2__*,int*,int) ;
 int ff_ape_parse_tag (TYPE_6__*) ;
 int ffio_get_checksum (TYPE_5__*) ;
 int ffio_init_checksum (TYPE_5__*,int ,int) ;
 scalar_t__ get_bits (int *,int ) ;
 scalar_t__ get_bits64 (int *,int ) ;
 int get_bits_long (int *,int ) ;
 int init_get_bits8 (int *,int*,int) ;
 int memset (int*,int ,int ) ;
 int tak_check_crc ;

__attribute__((used)) static int tak_read_header(AVFormatContext *s)
{
    TAKDemuxContext *tc = s->priv_data;
    AVIOContext *pb = s->pb;
    GetBitContext gb;
    AVStream *st;
    uint8_t *buffer = ((void*)0);
    int ret;

    st = avformat_new_stream(s, 0);
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_TAK;
    st->need_parsing = AVSTREAM_PARSE_FULL_RAW;

    tc->mlast_frame = 0;
    if (avio_rl32(pb) != MKTAG('t', 'B', 'a', 'K')) {
        avio_seek(pb, -4, SEEK_CUR);
        return 0;
    }

    while (!avio_feof(pb)) {
        enum TAKMetaDataType type;
        int size;

        type = avio_r8(pb) & 0x7f;
        size = avio_rl24(pb);

        switch (type) {
        case 128:
            if (st->codecpar->extradata)
                return AVERROR_INVALIDDATA;
        case 130:
        case 132:
            if (size <= 3)
                return AVERROR_INVALIDDATA;

            buffer = av_malloc(size - 3 + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!buffer)
                return AVERROR(ENOMEM);
            memset(buffer + size - 3, 0, AV_INPUT_BUFFER_PADDING_SIZE);

            ffio_init_checksum(pb, tak_check_crc, 0xCE04B7U);
            if (avio_read(pb, buffer, size - 3) != size - 3) {
                av_freep(&buffer);
                return AVERROR(EIO);
            }
            if (ffio_get_checksum(s->pb) != avio_rb24(pb)) {
                av_log(s, AV_LOG_ERROR, "%d metadata block CRC error.\n", type);
                if (s->error_recognition & AV_EF_EXPLODE) {
                    av_freep(&buffer);
                    return AVERROR_INVALIDDATA;
                }
            }

            break;
        case 129: {
            uint8_t md5[16];
            int i;

            if (size != 19)
                return AVERROR_INVALIDDATA;
            ffio_init_checksum(pb, tak_check_crc, 0xCE04B7U);
            avio_read(pb, md5, 16);
            if (ffio_get_checksum(s->pb) != avio_rb24(pb)) {
                av_log(s, AV_LOG_ERROR, "MD5 metadata block CRC error.\n");
                if (s->error_recognition & AV_EF_EXPLODE)
                    return AVERROR_INVALIDDATA;
            }

            av_log(s, AV_LOG_VERBOSE, "MD5=");
            for (i = 0; i < 16; i++)
                av_log(s, AV_LOG_VERBOSE, "%02x", md5[i]);
            av_log(s, AV_LOG_VERBOSE, "\n");
            break;
        }
        case 131: {
            int64_t curpos = avio_tell(pb);

            if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
                ff_ape_parse_tag(s);
                avio_seek(pb, curpos, SEEK_SET);
            }

            tc->data_end += curpos;
            return 0;
        }
        default:
            ret = avio_skip(pb, size);
            if (ret < 0)
                return ret;
        }

        if (type == 128) {
            TAKStreamInfo ti;

            ret = avpriv_tak_parse_streaminfo(&ti, buffer, size -3);
            if (ret < 0)
                goto end;
            if (ti.samples > 0)
                st->duration = ti.samples;
            st->codecpar->bits_per_coded_sample = ti.bps;
            if (ti.ch_layout)
                st->codecpar->channel_layout = ti.ch_layout;
            st->codecpar->sample_rate = ti.sample_rate;
            st->codecpar->channels = ti.channels;
            st->start_time = 0;
            avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);
            st->codecpar->extradata = buffer;
            st->codecpar->extradata_size = size - 3;
            buffer = ((void*)0);
        } else if (type == 130) {
            if (size != 11) {
                ret = AVERROR_INVALIDDATA;
                goto end;
            }
            init_get_bits8(&gb, buffer, size - 3);
            tc->mlast_frame = 1;
            tc->data_end = get_bits64(&gb, TAK_LAST_FRAME_POS_BITS) +
                              get_bits(&gb, TAK_LAST_FRAME_SIZE_BITS);
            av_freep(&buffer);
        } else if (type == 132) {
            init_get_bits8(&gb, buffer, size - 3);
            av_log(s, AV_LOG_VERBOSE, "encoder version: %0X\n",
                   get_bits_long(&gb, TAK_ENCODER_VERSION_BITS));
            av_freep(&buffer);
        }
    }

    return AVERROR_EOF;
end:
    av_freep(&buffer);
    return ret;
}
