
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; int color_range; int pix_fmt; } ;
typedef int * CFNumberRef ;
typedef int * CFMutableDictionaryRef ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int * CFDictionaryCreateMutable (int ,int,int *,int *) ;
 int CFDictionarySetValue (int *,int ,int *) ;
 int * CFNumberCreate (int ,int ,int*) ;
 int CFRelease (int *) ;
 int ENOMEM ;
 int add_color_attr (TYPE_1__*,int *) ;
 int get_cv_pixel_format (TYPE_1__*,int ,int ,int*,int *) ;
 int kCFAllocatorDefault ;
 int kCFCopyStringDictionaryKeyCallBacks ;
 int kCFNumberSInt32Type ;
 int kCFTypeDictionaryValueCallBacks ;
 int kCVPixelBufferHeightKey ;
 int kCVPixelBufferPixelFormatTypeKey ;
 int kCVPixelBufferWidthKey ;
 int vt_release_num (int **) ;

__attribute__((used)) static int create_cv_pixel_buffer_info(AVCodecContext* avctx,
                                       CFMutableDictionaryRef* dict)
{
    CFNumberRef cv_color_format_num = ((void*)0);
    CFNumberRef width_num = ((void*)0);
    CFNumberRef height_num = ((void*)0);
    CFMutableDictionaryRef pixel_buffer_info = ((void*)0);
    int cv_color_format;
    int status = get_cv_pixel_format(avctx,
                                     avctx->pix_fmt,
                                     avctx->color_range,
                                     &cv_color_format,
                                     ((void*)0));
    if (status) return status;

    pixel_buffer_info = CFDictionaryCreateMutable(
                            kCFAllocatorDefault,
                            20,
                            &kCFCopyStringDictionaryKeyCallBacks,
                            &kCFTypeDictionaryValueCallBacks);

    if (!pixel_buffer_info) goto pbinfo_nomem;

    cv_color_format_num = CFNumberCreate(kCFAllocatorDefault,
                                         kCFNumberSInt32Type,
                                         &cv_color_format);
    if (!cv_color_format_num) goto pbinfo_nomem;

    CFDictionarySetValue(pixel_buffer_info,
                         kCVPixelBufferPixelFormatTypeKey,
                         cv_color_format_num);
    vt_release_num(&cv_color_format_num);

    width_num = CFNumberCreate(kCFAllocatorDefault,
                               kCFNumberSInt32Type,
                               &avctx->width);
    if (!width_num) return AVERROR(ENOMEM);

    CFDictionarySetValue(pixel_buffer_info,
                         kCVPixelBufferWidthKey,
                         width_num);
    vt_release_num(&width_num);

    height_num = CFNumberCreate(kCFAllocatorDefault,
                                kCFNumberSInt32Type,
                                &avctx->height);
    if (!height_num) goto pbinfo_nomem;

    CFDictionarySetValue(pixel_buffer_info,
                         kCVPixelBufferHeightKey,
                         height_num);
    vt_release_num(&height_num);

    add_color_attr(avctx, pixel_buffer_info);

    *dict = pixel_buffer_info;
    return 0;

pbinfo_nomem:
    vt_release_num(&cv_color_format_num);
    vt_release_num(&width_num);
    vt_release_num(&height_num);
    if (pixel_buffer_info) CFRelease(pixel_buffer_info);

    return AVERROR(ENOMEM);
}
