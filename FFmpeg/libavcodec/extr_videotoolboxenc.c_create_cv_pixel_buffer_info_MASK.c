#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int width; int height; int /*<<< orphan*/  color_range; int /*<<< orphan*/  pix_fmt; } ;
typedef  int /*<<< orphan*/ * CFNumberRef ;
typedef  int /*<<< orphan*/ * CFMutableDictionaryRef ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFCopyStringDictionaryKeyCallBacks ; 
 int /*<<< orphan*/  kCFNumberSInt32Type ; 
 int /*<<< orphan*/  kCFTypeDictionaryValueCallBacks ; 
 int /*<<< orphan*/  kCVPixelBufferHeightKey ; 
 int /*<<< orphan*/  kCVPixelBufferPixelFormatTypeKey ; 
 int /*<<< orphan*/  kCVPixelBufferWidthKey ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC8(AVCodecContext* avctx,
                                       CFMutableDictionaryRef* dict)
{
    CFNumberRef cv_color_format_num = NULL;
    CFNumberRef width_num = NULL;
    CFNumberRef height_num = NULL;
    CFMutableDictionaryRef pixel_buffer_info = NULL;
    int cv_color_format;
    int status = FUNC6(avctx,
                                     avctx->pix_fmt,
                                     avctx->color_range,
                                     &cv_color_format,
                                     NULL);
    if (status) return status;

    pixel_buffer_info = FUNC1(
                            kCFAllocatorDefault,
                            20,
                            &kCFCopyStringDictionaryKeyCallBacks,
                            &kCFTypeDictionaryValueCallBacks);

    if (!pixel_buffer_info) goto pbinfo_nomem;

    cv_color_format_num = FUNC3(kCFAllocatorDefault,
                                         kCFNumberSInt32Type,
                                         &cv_color_format);
    if (!cv_color_format_num) goto pbinfo_nomem;

    FUNC2(pixel_buffer_info,
                         kCVPixelBufferPixelFormatTypeKey,
                         cv_color_format_num);
    FUNC7(&cv_color_format_num);

    width_num = FUNC3(kCFAllocatorDefault,
                               kCFNumberSInt32Type,
                               &avctx->width);
    if (!width_num) return FUNC0(ENOMEM);

    FUNC2(pixel_buffer_info,
                         kCVPixelBufferWidthKey,
                         width_num);
    FUNC7(&width_num);

    height_num = FUNC3(kCFAllocatorDefault,
                                kCFNumberSInt32Type,
                                &avctx->height);
    if (!height_num) goto pbinfo_nomem;

    FUNC2(pixel_buffer_info,
                         kCVPixelBufferHeightKey,
                         height_num);
    FUNC7(&height_num);

    FUNC5(avctx, pixel_buffer_info);

    *dict = pixel_buffer_info;
    return 0;

pbinfo_nomem:
    FUNC7(&cv_color_format_num);
    FUNC7(&width_num);
    FUNC7(&height_num);
    if (pixel_buffer_info) FUNC4(pixel_buffer_info);

    return FUNC0(ENOMEM);
}