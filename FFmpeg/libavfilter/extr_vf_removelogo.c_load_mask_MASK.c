#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ **,int*,int*,int*,int*,char const*,void*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int,int,int,void*) ; 

__attribute__((used)) static int FUNC6(uint8_t **mask, int *w, int *h,
                     const char *filename, void *log_ctx)
{
    int ret;
    enum AVPixelFormat pix_fmt;
    uint8_t *src_data[4], *gray_data[4];
    int src_linesize[4], gray_linesize[4];

    /* load image from file */
    if ((ret = FUNC4(src_data, src_linesize, w, h, &pix_fmt, filename, log_ctx)) < 0)
        return ret;

    /* convert the image to GRAY8 */
    if ((ret = FUNC5(gray_data, gray_linesize, *w, *h, AV_PIX_FMT_GRAY8,
                              src_data, src_linesize, *w, *h, pix_fmt,
                              log_ctx)) < 0)
        goto end;

    /* copy mask to a newly allocated array */
    *mask = FUNC3(*w * *h);
    if (!*mask)
        ret = FUNC0(ENOMEM);
    FUNC2(*mask, *w, gray_data[0], gray_linesize[0], *w, *h);

end:
    FUNC1(&src_data[0]);
    FUNC1(&gray_data[0]);
    return ret;
}