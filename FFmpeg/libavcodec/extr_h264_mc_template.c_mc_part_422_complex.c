
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int qpel_mc_func ;
typedef int h264_weight_func ;
typedef int h264_chroma_mc_func ;
typedef int h264_biweight_func ;
struct TYPE_6__ {int use_weight; int*** implicit_weight; } ;
struct TYPE_7__ {size_t** ref_cache; int mb_y; TYPE_1__ pwt; } ;
typedef TYPE_2__ H264SliceContext ;
typedef int H264Context ;


 int CHROMA_IDC ;
 int PIXEL_SHIFT ;
 int mc_part_std (int const*,TYPE_2__*,int,int,int,int,int *,int *,int *,int,int,int const*,int ,int const*,int ,int,int,int ,int ) ;
 int mc_part_weighted (int const*,TYPE_2__*,int,int,int,int,int *,int *,int *,int,int,int const*,int ,int const,int const,int const,int const,int,int,int ,int ) ;
 size_t* scan8 ;

__attribute__((used)) static void mc_part(const H264Context *h, H264SliceContext *sl,
                    int n, int square,
                    int height, int delta,
                    uint8_t *dest_y, uint8_t *dest_cb,
                    uint8_t *dest_cr,
                    int x_offset, int y_offset,
                    const qpel_mc_func *qpix_put,
                    h264_chroma_mc_func chroma_put,
                    const qpel_mc_func *qpix_avg,
                    h264_chroma_mc_func chroma_avg,
                    const h264_weight_func *weight_op,
                    const h264_biweight_func *weight_avg,
                    int list0, int list1)
{
    if ((sl->pwt.use_weight == 2 && list0 && list1 &&
         (sl->pwt.implicit_weight[sl->ref_cache[0][scan8[n]]][sl->ref_cache[1][scan8[n]]][sl->mb_y & 1] != 32)) ||
        sl->pwt.use_weight == 1)
        mc_part_weighted(h, sl, n, square, height, delta, dest_y, dest_cb, dest_cr,
                         x_offset, y_offset, qpix_put, chroma_put,
                         weight_op[0], weight_op[1], weight_avg[0],
                         weight_avg[1], list0, list1, PIXEL_SHIFT, CHROMA_IDC);
    else
        mc_part_std(h, sl, n, square, height, delta, dest_y, dest_cb, dest_cr,
                    x_offset, y_offset, qpix_put, chroma_put, qpix_avg,
                    chroma_avg, list0, list1, PIXEL_SHIFT, CHROMA_IDC);
}
