
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_6__ {TYPE_1__* sps; } ;
struct TYPE_7__ {scalar_t__* sao_pixel_buffer_v; scalar_t__* sao_pixel_buffer_h; TYPE_2__ ps; } ;
struct TYPE_5__ {int pixel_shift; int width; int* hshift; int height; int* vshift; } ;
typedef TYPE_3__ HEVCContext ;


 int copy_vert (scalar_t__,int const*,int,int,int,int) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static void copy_CTB_to_hv(HEVCContext *s, const uint8_t *src,
                           ptrdiff_t stride_src, int x, int y, int width, int height,
                           int c_idx, int x_ctb, int y_ctb)
{
    int sh = s->ps.sps->pixel_shift;
    int w = s->ps.sps->width >> s->ps.sps->hshift[c_idx];
    int h = s->ps.sps->height >> s->ps.sps->vshift[c_idx];


    memcpy(s->sao_pixel_buffer_h[c_idx] + (((2 * y_ctb) * w + x) << sh),
        src, width << sh);
    memcpy(s->sao_pixel_buffer_h[c_idx] + (((2 * y_ctb + 1) * w + x) << sh),
        src + stride_src * (height - 1), width << sh);


    copy_vert(s->sao_pixel_buffer_v[c_idx] + (((2 * x_ctb) * h + y) << sh), src, sh, height, 1 << sh, stride_src);

    copy_vert(s->sao_pixel_buffer_v[c_idx] + (((2 * x_ctb + 1) * h + y) << sh), src + ((width - 1) << sh), sh, height, 1 << sh, stride_src);
}
