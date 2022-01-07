
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int VSPixelFormat ;
typedef int AVFilterContext ;


 int AV_LOG_ERROR ;
 int PF_BGR24 ;
 int PF_GRAY8 ;
 int PF_NONE ;
 int PF_RGB24 ;
 int PF_RGBA ;
 int PF_YUV410P ;
 int PF_YUV411P ;
 int PF_YUV420P ;
 int PF_YUV422P ;
 int PF_YUV440P ;
 int PF_YUV444P ;
 int PF_YUVA420P ;
 int av_log (int *,int ,char*,int) ;

VSPixelFormat ff_av2vs_pixfmt(AVFilterContext *ctx, enum AVPixelFormat pf)
{
    switch (pf) {
    case 132: return PF_YUV420P;
    case 131: return PF_YUV422P;
    case 129: return PF_YUV444P;
    case 134: return PF_YUV410P;
    case 133: return PF_YUV411P;
    case 130: return PF_YUV440P;
    case 128: return PF_YUVA420P;
    case 137: return PF_GRAY8;
    case 136: return PF_RGB24;
    case 138: return PF_BGR24;
    case 135: return PF_RGBA;
    default:
        av_log(ctx, AV_LOG_ERROR, "cannot deal with pixel format %i\n", pf);
        return PF_NONE;
    }
}
