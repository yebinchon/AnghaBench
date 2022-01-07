
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int bps; int channels; } ;
struct TYPE_8__ {int sample_fmt; } ;
struct TYPE_7__ {int got_streaminfo; TYPE_5__ flac_stream_info; TYPE_4__* avctx; int dsp; } ;
typedef TYPE_1__ FLACContext ;


 int AVERROR_INVALIDDATA ;
 int FLAC_METADATA_TYPE_STREAMINFO ;
 int FLAC_STREAMINFO_SIZE ;
 int allocate_buffers (TYPE_1__*) ;
 int ff_flac_parse_streaminfo (TYPE_4__*,TYPE_5__*,int const*) ;
 int ff_flacdsp_init (int *,int ,int ,int ) ;
 int flac_parse_block_header (int const*,int *,int*,int*) ;
 int flac_set_bps (TYPE_1__*) ;

__attribute__((used)) static int parse_streaminfo(FLACContext *s, const uint8_t *buf, int buf_size)
{
    int metadata_type, metadata_size, ret;

    if (buf_size < FLAC_STREAMINFO_SIZE+8) {

        return 0;
    }
    flac_parse_block_header(&buf[4], ((void*)0), &metadata_type, &metadata_size);
    if (metadata_type != FLAC_METADATA_TYPE_STREAMINFO ||
        metadata_size != FLAC_STREAMINFO_SIZE) {
        return AVERROR_INVALIDDATA;
    }
    ret = ff_flac_parse_streaminfo(s->avctx, &s->flac_stream_info, &buf[8]);
    if (ret < 0)
        return ret;
    ret = allocate_buffers(s);
    if (ret < 0)
        return ret;
    flac_set_bps(s);
    ff_flacdsp_init(&s->dsp, s->avctx->sample_fmt,
                    s->flac_stream_info.channels, s->flac_stream_info.bps);
    s->got_streaminfo = 1;

    return 0;
}
