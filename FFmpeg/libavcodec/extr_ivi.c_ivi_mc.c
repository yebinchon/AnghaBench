
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* ivi_mc_func ) (scalar_t__,scalar_t__,int,int) ;
typedef int (* ivi_mc_avg_func ) (scalar_t__,scalar_t__,scalar_t__,int,int,int) ;
struct TYPE_3__ {int pitch; int aheight; int blk_size; scalar_t__ b_ref_buf; scalar_t__ ref_buf; scalar_t__ buf; } ;
typedef TYPE_1__ IVIBandDesc ;


 int AVERROR_INVALIDDATA ;
 int av_assert0 (int) ;

__attribute__((used)) static int ivi_mc(const IVIBandDesc *band, ivi_mc_func mc, ivi_mc_avg_func mc_avg,
                  int offs, int mv_x, int mv_y, int mv_x2, int mv_y2,
                  int mc_type, int mc_type2)
{
    int ref_offs = offs + mv_y * band->pitch + mv_x;
    int buf_size = band->pitch * band->aheight;
    int min_size = band->pitch * (band->blk_size - 1) + band->blk_size;
    int ref_size = (mc_type > 1) * band->pitch + (mc_type & 1);

    if (mc_type != -1) {
        av_assert0(offs >= 0 && ref_offs >= 0 && band->ref_buf);
        av_assert0(buf_size - min_size >= offs);
        av_assert0(buf_size - min_size - ref_size >= ref_offs);
    }

    if (mc_type2 == -1) {
        mc(band->buf + offs, band->ref_buf + ref_offs, band->pitch, mc_type);
    } else {
        int ref_offs2 = offs + mv_y2 * band->pitch + mv_x2;
        int ref_size2 = (mc_type2 > 1) * band->pitch + (mc_type2 & 1);
        if (offs < 0 || ref_offs2 < 0 || !band->b_ref_buf)
            return AVERROR_INVALIDDATA;
        if (buf_size - min_size - ref_size2 < ref_offs2)
            return AVERROR_INVALIDDATA;

        if (mc_type == -1)
            mc(band->buf + offs, band->b_ref_buf + ref_offs2,
               band->pitch, mc_type2);
        else
            mc_avg(band->buf + offs, band->ref_buf + ref_offs,
                   band->b_ref_buf + ref_offs2, band->pitch,
                   mc_type, mc_type2);
    }

    return 0;
}
