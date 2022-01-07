
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
typedef int AVCodecContext ;


 int AVCOL_RANGE_JPEG ;
 int AVCOL_RANGE_MPEG ;
 int AVERROR (int ) ;
 int AV_PIX_FMT_NV12 ;
 int AV_PIX_FMT_P010LE ;
 int AV_PIX_FMT_YUV420P ;
 int EINVAL ;
 int kCVPixelFormatType_420YpCbCr10BiPlanarFullRange ;
 int kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange ;
 int kCVPixelFormatType_420YpCbCr8BiPlanarFullRange ;
 int kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange ;
 int kCVPixelFormatType_420YpCbCr8Planar ;
 int kCVPixelFormatType_420YpCbCr8PlanarFullRange ;

__attribute__((used)) static int get_cv_pixel_format(AVCodecContext* avctx,
                               enum AVPixelFormat fmt,
                               enum AVColorRange range,
                               int* av_pixel_format,
                               int* range_guessed)
{
    if (range_guessed) *range_guessed = range != AVCOL_RANGE_MPEG &&
                                        range != AVCOL_RANGE_JPEG;


    if (fmt == AV_PIX_FMT_NV12) {
        *av_pixel_format = range == AVCOL_RANGE_JPEG ?
                                        kCVPixelFormatType_420YpCbCr8BiPlanarFullRange :
                                        kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange;
    } else if (fmt == AV_PIX_FMT_YUV420P) {
        *av_pixel_format = range == AVCOL_RANGE_JPEG ?
                                        kCVPixelFormatType_420YpCbCr8PlanarFullRange :
                                        kCVPixelFormatType_420YpCbCr8Planar;
    } else if (fmt == AV_PIX_FMT_P010LE) {
        *av_pixel_format = range == AVCOL_RANGE_JPEG ?
                                        kCVPixelFormatType_420YpCbCr10BiPlanarFullRange :
                                        kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange;
        *av_pixel_format = kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange;
    } else {
        return AVERROR(EINVAL);
    }

    return 0;
}
