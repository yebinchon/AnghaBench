
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int frame_size; int avctx; int gb; } ;
typedef TYPE_1__ DCAXllDecoder ;
typedef int DCAExssAsset ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int init_get_bits8 (int *,int *,int) ;
 int parse_band_data (TYPE_1__*) ;
 int parse_common_header (TYPE_1__*) ;
 int parse_navi_table (TYPE_1__*) ;
 int parse_sub_headers (TYPE_1__*,int *) ;

__attribute__((used)) static int parse_frame(DCAXllDecoder *s, uint8_t *data, int size, DCAExssAsset *asset)
{
    int ret;

    if ((ret = init_get_bits8(&s->gb, data, size)) < 0)
        return ret;
    if ((ret = parse_common_header(s)) < 0)
        return ret;
    if ((ret = parse_sub_headers(s, asset)) < 0)
        return ret;
    if ((ret = parse_navi_table(s)) < 0)
        return ret;
    if ((ret = parse_band_data(s)) < 0)
        return ret;
    if (ff_dca_seek_bits(&s->gb, s->frame_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of XLL frame\n");
        return AVERROR_INVALIDDATA;
    }
    return ret;
}
