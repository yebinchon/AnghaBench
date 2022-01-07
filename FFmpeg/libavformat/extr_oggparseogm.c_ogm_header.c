
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct ogg_stream {int psize; scalar_t__ pstart; scalar_t__ buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_23__ {scalar_t__ codec_type; scalar_t__ codec_id; int codec_tag; int width; int height; int bit_rate; int sample_rate; int extradata_size; scalar_t__* extradata; int channels; } ;
struct TYPE_22__ {TYPE_3__** streams; struct ogg* priv_data; } ;
struct TYPE_21__ {TYPE_1__* internal; TYPE_8__* codecpar; int need_parsing; } ;
struct TYPE_20__ {int buffer; } ;
struct TYPE_19__ {int need_context_update; } ;
typedef TYPE_2__ GetByteContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_FULL ;
 int AVSTREAM_PARSE_HEADERS ;
 scalar_t__ AV_CODEC_ID_AAC ;
 scalar_t__ AV_CODEC_ID_MPEG4 ;
 scalar_t__ AV_CODEC_ID_TEXT ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int FFMIN (int,int ) ;
 int av_freep (scalar_t__**) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int bytestream2_get_buffer (TYPE_2__*,scalar_t__*,int) ;
 int bytestream2_get_bytes_left (TYPE_2__*) ;
 int bytestream2_get_le16 (TYPE_2__*) ;
 int bytestream2_get_le32 (TYPE_2__*) ;
 int bytestream2_get_le64 (TYPE_2__*) ;
 int bytestream2_init (TYPE_2__*,scalar_t__,int ) ;
 int bytestream2_peek_byte (TYPE_2__*) ;
 int bytestream2_skip (TYPE_2__*,int) ;
 scalar_t__ ff_alloc_extradata (TYPE_8__*,int) ;
 int ff_codec_bmp_tags ;
 void* ff_codec_get_id (int ,int) ;
 int ff_codec_wav_tags ;
 int ff_vorbis_stream_comment (TYPE_4__*,TYPE_3__*,int ,int) ;
 int strtol (scalar_t__*,int *,int) ;

__attribute__((used)) static int
ogm_header(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    GetByteContext p;
    uint64_t time_unit;
    uint64_t spu;
    uint32_t size;

    bytestream2_init(&p, os->buf + os->pstart, os->psize);
    if (!(bytestream2_peek_byte(&p) & 1))
        return 0;

    if (bytestream2_peek_byte(&p) == 1) {
        bytestream2_skip(&p, 1);

        if (bytestream2_peek_byte(&p) == 'v'){
            int tag;
            st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
            bytestream2_skip(&p, 8);
            tag = bytestream2_get_le32(&p);
            st->codecpar->codec_id = ff_codec_get_id(ff_codec_bmp_tags, tag);
            st->codecpar->codec_tag = tag;
            if (st->codecpar->codec_id == AV_CODEC_ID_MPEG4)
                st->need_parsing = AVSTREAM_PARSE_HEADERS;
        } else if (bytestream2_peek_byte(&p) == 't') {
            st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
            st->codecpar->codec_id = AV_CODEC_ID_TEXT;
            bytestream2_skip(&p, 12);
        } else {
            uint8_t acid[5] = { 0 };
            int cid;
            st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            bytestream2_skip(&p, 8);
            bytestream2_get_buffer(&p, acid, 4);
            acid[4] = 0;
            cid = strtol(acid, ((void*)0), 16);
            st->codecpar->codec_id = ff_codec_get_id(ff_codec_wav_tags, cid);

            if (st->codecpar->codec_id != AV_CODEC_ID_AAC)
                st->need_parsing = AVSTREAM_PARSE_FULL;
        }

        size = bytestream2_get_le32(&p);
        size = FFMIN(size, os->psize);
        time_unit = bytestream2_get_le64(&p);
        spu = bytestream2_get_le64(&p);
        if (!time_unit || !spu) {
            av_log(s, AV_LOG_ERROR, "Invalid timing values.\n");
            return AVERROR_INVALIDDATA;
        }

        bytestream2_skip(&p, 4);
        bytestream2_skip(&p, 8);

        if(st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO){
            st->codecpar->width = bytestream2_get_le32(&p);
            st->codecpar->height = bytestream2_get_le32(&p);
            avpriv_set_pts_info(st, 64, time_unit, spu * 10000000);
        } else {
            st->codecpar->channels = bytestream2_get_le16(&p);
            bytestream2_skip(&p, 2);
            st->codecpar->bit_rate = bytestream2_get_le32(&p) * 8;
            st->codecpar->sample_rate = spu * 10000000 / time_unit;
            avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);
            if (size >= 56 && st->codecpar->codec_id == AV_CODEC_ID_AAC) {
                bytestream2_skip(&p, 4);
                size -= 4;
            }
            if (size > 52) {
                size -= 52;
                if (bytestream2_get_bytes_left(&p) < size)
                    return AVERROR_INVALIDDATA;
                av_freep(&st->codecpar->extradata);
                if (ff_alloc_extradata(st->codecpar, size) < 0)
                    return AVERROR(ENOMEM);
                bytestream2_get_buffer(&p, st->codecpar->extradata, st->codecpar->extradata_size);
            }
        }


        st->internal->need_context_update = 1;
    } else if (bytestream2_peek_byte(&p) == 3) {
        bytestream2_skip(&p, 7);
        if (bytestream2_get_bytes_left(&p) > 1)
            ff_vorbis_stream_comment(s, st, p.buffer, bytestream2_get_bytes_left(&p) - 1);
    }

    return 1;
}
