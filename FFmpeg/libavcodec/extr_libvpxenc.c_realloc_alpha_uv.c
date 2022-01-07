
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vpx_image {unsigned char** planes; int* stride; scalar_t__ d_h; scalar_t__ d_w; } ;
struct TYPE_4__ {struct vpx_image rawimg_alpha; } ;
typedef TYPE_1__ VPxContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int VPX_IMG_FMT_I420 ;
 size_t VPX_PLANE_U ;
 size_t VPX_PLANE_V ;
 int av_freep (unsigned char**) ;
 unsigned char* av_malloc_array (int,int) ;
 int memset (unsigned char*,int,int) ;
 int vpx_img_wrap (struct vpx_image*,int ,int,int,int,unsigned char*) ;

__attribute__((used)) static int realloc_alpha_uv(AVCodecContext *avctx, int width, int height)
{
    VPxContext *ctx = avctx->priv_data;
    struct vpx_image *rawimg_alpha = &ctx->rawimg_alpha;
    unsigned char **planes = rawimg_alpha->planes;
    int *stride = rawimg_alpha->stride;

    if (!planes[VPX_PLANE_U] ||
        !planes[VPX_PLANE_V] ||
        width != (int)rawimg_alpha->d_w ||
        height != (int)rawimg_alpha->d_h) {
        av_freep(&planes[VPX_PLANE_U]);
        av_freep(&planes[VPX_PLANE_V]);

        vpx_img_wrap(rawimg_alpha, VPX_IMG_FMT_I420, width, height, 1,
                     (unsigned char*)1);
        planes[VPX_PLANE_U] = av_malloc_array(stride[VPX_PLANE_U], height);
        planes[VPX_PLANE_V] = av_malloc_array(stride[VPX_PLANE_V], height);
        if (!planes[VPX_PLANE_U] || !planes[VPX_PLANE_V])
            return AVERROR(ENOMEM);

        memset(planes[VPX_PLANE_U], 0x80, stride[VPX_PLANE_U] * height);
        memset(planes[VPX_PLANE_V], 0x80, stride[VPX_PLANE_V] * height);
    }

    return 0;
}
