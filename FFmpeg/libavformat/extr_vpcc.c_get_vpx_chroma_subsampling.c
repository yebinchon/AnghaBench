
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVChromaLocation { ____Placeholder_AVChromaLocation } AVChromaLocation ;
typedef int AVFormatContext ;


 int AVCHROMA_LOC_LEFT ;
 int AV_LOG_ERROR ;
 int VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA ;
 int VPX_SUBSAMPLING_420_VERTICAL ;
 int VPX_SUBSAMPLING_422 ;
 int VPX_SUBSAMPLING_444 ;
 int av_log (int *,int ,char*,int) ;
 scalar_t__ av_pix_fmt_get_chroma_sub_sample (int,int*,int*) ;

__attribute__((used)) static int get_vpx_chroma_subsampling(AVFormatContext *s,
                                      enum AVPixelFormat pixel_format,
                                      enum AVChromaLocation chroma_location)
{
    int chroma_w, chroma_h;
    if (av_pix_fmt_get_chroma_sub_sample(pixel_format, &chroma_w, &chroma_h) == 0) {
        if (chroma_w == 1 && chroma_h == 1) {
            return (chroma_location == AVCHROMA_LOC_LEFT)
                       ? VPX_SUBSAMPLING_420_VERTICAL
                       : VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA;
        } else if (chroma_w == 1 && chroma_h == 0) {
            return VPX_SUBSAMPLING_422;
        } else if (chroma_w == 0 && chroma_h == 0) {
            return VPX_SUBSAMPLING_444;
        }
    }
    av_log(s, AV_LOG_ERROR, "Unsupported pixel format (%d)\n", pixel_format);
    return -1;
}
