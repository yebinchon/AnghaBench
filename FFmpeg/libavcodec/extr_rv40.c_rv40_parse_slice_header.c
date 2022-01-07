
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int width; int height; int avctx; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct TYPE_8__ {int type; int width; int height; void* start; void* pts; void* vlc_set; void* quant; } ;
typedef TYPE_2__ SliceInfo ;
typedef TYPE_3__ RV34DecContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int av_image_check_size (int,int,int ,int ) ;
 int ff_rv34_get_start_offset (int *,int) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int rv40_parse_picture_size (int *,int*,int*) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int rv40_parse_slice_header(RV34DecContext *r, GetBitContext *gb, SliceInfo *si)
{
    int mb_bits;
    int w = r->s.width, h = r->s.height;
    int mb_size;
    int ret;

    memset(si, 0, sizeof(SliceInfo));
    if(get_bits1(gb))
        return AVERROR_INVALIDDATA;
    si->type = get_bits(gb, 2);
    if(si->type == 1) si->type = 0;
    si->quant = get_bits(gb, 5);
    if(get_bits(gb, 2))
        return AVERROR_INVALIDDATA;
    si->vlc_set = get_bits(gb, 2);
    skip_bits1(gb);
    si->pts = get_bits(gb, 13);
    if(!si->type || !get_bits1(gb))
        rv40_parse_picture_size(gb, &w, &h);
    if ((ret = av_image_check_size(w, h, 0, r->s.avctx)) < 0)
        return ret;
    si->width = w;
    si->height = h;
    mb_size = ((w + 15) >> 4) * ((h + 15) >> 4);
    mb_bits = ff_rv34_get_start_offset(gb, mb_size);
    si->start = get_bits(gb, mb_bits);

    return 0;
}
