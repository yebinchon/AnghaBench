
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct SwsContext {int dummy; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_get_pix_fmt_name (int) ;
 int av_image_alloc (int **,int*,int,int,int,int) ;
 int av_log (void*,int ,char*,int ,int,int,int ,int,int) ;
 int sws_freeContext (struct SwsContext*) ;
 struct SwsContext* sws_getContext (int,int,int,int,int,int,int ,int *,int *,int *) ;
 int sws_scale (struct SwsContext*,int const* const*,int*,int ,int,int **,int*) ;

int ff_scale_image(uint8_t *dst_data[4], int dst_linesize[4],
                   int dst_w, int dst_h, enum AVPixelFormat dst_pix_fmt,
                   uint8_t * const src_data[4], int src_linesize[4],
                   int src_w, int src_h, enum AVPixelFormat src_pix_fmt,
                   void *log_ctx)
{
    int ret;
    struct SwsContext *sws_ctx = sws_getContext(src_w, src_h, src_pix_fmt,
                                                dst_w, dst_h, dst_pix_fmt,
                                                0, ((void*)0), ((void*)0), ((void*)0));
    if (!sws_ctx) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Impossible to create scale context for the conversion "
               "fmt:%s s:%dx%d -> fmt:%s s:%dx%d\n",
               av_get_pix_fmt_name(src_pix_fmt), src_w, src_h,
               av_get_pix_fmt_name(dst_pix_fmt), dst_w, dst_h);
        ret = AVERROR(EINVAL);
        goto end;
    }

    if ((ret = av_image_alloc(dst_data, dst_linesize, dst_w, dst_h, dst_pix_fmt, 16)) < 0)
        goto end;
    ret = 0;
    sws_scale(sws_ctx, (const uint8_t * const*)src_data, src_linesize, 0, src_h, dst_data, dst_linesize);

end:
    sws_freeContext(sws_ctx);
    return ret;
}
