
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ hd_stream_id; int xll_offset; int xll_size; } ;
struct TYPE_10__ {scalar_t__ hd_stream_id; scalar_t__ pbr_length; } ;
typedef TYPE_1__ DCAXllDecoder ;
typedef TYPE_2__ DCAExssAsset ;


 int clear_pbr (TYPE_1__*) ;
 int parse_frame_no_pbr (TYPE_1__*,int *,int ,TYPE_2__*) ;
 int parse_frame_pbr (TYPE_1__*,int *,int ,TYPE_2__*) ;

int ff_dca_xll_parse(DCAXllDecoder *s, uint8_t *data, DCAExssAsset *asset)
{
    int ret;

    if (s->hd_stream_id != asset->hd_stream_id) {
        clear_pbr(s);
        s->hd_stream_id = asset->hd_stream_id;
    }

    if (s->pbr_length)
        ret = parse_frame_pbr(s, data + asset->xll_offset, asset->xll_size, asset);
    else
        ret = parse_frame_no_pbr(s, data + asset->xll_offset, asset->xll_size, asset);

    return ret;
}
