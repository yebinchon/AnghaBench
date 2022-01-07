
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ogg_stream {int* buf; size_t pstart; int psize; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_10__ {scalar_t__ extradata; int extradata_size; int codec_id; int codec_type; } ;
struct TYPE_9__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_8__ {TYPE_6__* codecpar; int need_parsing; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVSTREAM_PARSE_HEADERS ;
 int AV_CODEC_ID_FLAC ;
 int AV_RB24 (scalar_t__) ;
 int ENOMEM ;
 int FLAC_METADATA_TYPE_VORBIS_COMMENT ;
 scalar_t__ FLAC_STREAMINFO_SIZE ;
 int OGG_FLAC_METADATA_TYPE_STREAMINFO ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;
 scalar_t__ ff_alloc_extradata (TYPE_6__*,scalar_t__) ;
 int ff_vorbis_stream_comment (TYPE_2__*,TYPE_1__*,int*,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits_long (int *,int) ;
 int init_get_bits (int *,int*,int) ;
 int memcpy (scalar_t__,int*,int ) ;
 int skip_bits1 (int *) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int
flac_header (AVFormatContext * s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    GetBitContext gb;
    int mdt;

    if (os->buf[os->pstart] == 0xff)
        return 0;

    init_get_bits(&gb, os->buf + os->pstart, os->psize*8);
    skip_bits1(&gb);
    mdt = get_bits(&gb, 7);

    if (mdt == OGG_FLAC_METADATA_TYPE_STREAMINFO) {
        uint8_t *streaminfo_start = os->buf + os->pstart + 5 + 4 + 4 + 4;
        uint32_t samplerate;

        skip_bits_long(&gb, 4*8);
        if(get_bits(&gb, 8) != 1)
            return -1;
        skip_bits_long(&gb, 8 + 16);
        skip_bits_long(&gb, 4*8);


        if (get_bits_long(&gb, 32) != FLAC_STREAMINFO_SIZE)
            return -1;

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = AV_CODEC_ID_FLAC;
        st->need_parsing = AVSTREAM_PARSE_HEADERS;

        if (ff_alloc_extradata(st->codecpar, FLAC_STREAMINFO_SIZE) < 0)
            return AVERROR(ENOMEM);
        memcpy(st->codecpar->extradata, streaminfo_start, st->codecpar->extradata_size);

        samplerate = AV_RB24(st->codecpar->extradata + 10) >> 4;
        if (!samplerate)
            return AVERROR_INVALIDDATA;

        avpriv_set_pts_info(st, 64, 1, samplerate);
    } else if (mdt == FLAC_METADATA_TYPE_VORBIS_COMMENT) {
        ff_vorbis_stream_comment(s, st, os->buf + os->pstart + 4, os->psize - 4);
    }

    return 1;
}
