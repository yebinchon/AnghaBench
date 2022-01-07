
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwsContext {int dummy; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int SWS_FULL_CHR_H_INP ;
 int SWS_FULL_CHR_H_INT ;
 int av_opt_set_int (struct SwsContext*,char*,int,int ) ;
 int handle_jpeg (int*) ;
 int hb_error (char*) ;
 struct SwsContext* sws_alloc_context () ;
 int sws_freeContext (struct SwsContext*) ;
 int sws_getCoefficients (int) ;
 scalar_t__ sws_init_context (struct SwsContext*,int *,int *) ;
 int sws_setColorspaceDetails (struct SwsContext*,int ,int,int ,int,int ,int,int) ;

struct SwsContext*
hb_sws_get_context(int srcW, int srcH, enum AVPixelFormat srcFormat,
                   int dstW, int dstH, enum AVPixelFormat dstFormat,
                   int flags, int colorspace)
{
    struct SwsContext * ctx;

    ctx = sws_alloc_context();
    if ( ctx )
    {
        int srcRange, dstRange;

        srcRange = handle_jpeg(&srcFormat);
        dstRange = handle_jpeg(&dstFormat);
        flags |= SWS_FULL_CHR_H_INT | SWS_FULL_CHR_H_INP;

        av_opt_set_int(ctx, "srcw", srcW, 0);
        av_opt_set_int(ctx, "srch", srcH, 0);
        av_opt_set_int(ctx, "src_range", srcRange, 0);
        av_opt_set_int(ctx, "src_format", srcFormat, 0);
        av_opt_set_int(ctx, "dstw", dstW, 0);
        av_opt_set_int(ctx, "dsth", dstH, 0);
        av_opt_set_int(ctx, "dst_range", dstRange, 0);
        av_opt_set_int(ctx, "dst_format", dstFormat, 0);
        av_opt_set_int(ctx, "sws_flags", flags, 0);

        sws_setColorspaceDetails( ctx,
                      sws_getCoefficients( colorspace ),
                      srcRange,
                      sws_getCoefficients( colorspace ),
                      dstRange,
                      0,
                      1 << 16,
                      1 << 16 );

        if (sws_init_context(ctx, ((void*)0), ((void*)0)) < 0) {
            hb_error("Cannot initialize resampling context");
            sws_freeContext(ctx);
            ctx = ((void*)0);
        }
    }
    return ctx;
}
