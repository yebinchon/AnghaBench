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
struct SwsContext {int dummy; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int SWS_FULL_CHR_H_INP ; 
 int SWS_FULL_CHR_H_INT ; 
 int /*<<< orphan*/  FUNC0 (struct SwsContext*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct SwsContext* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct SwsContext*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct SwsContext*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct SwsContext*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

struct SwsContext*
FUNC8(int srcW, int srcH, enum AVPixelFormat srcFormat,
                   int dstW, int dstH, enum AVPixelFormat dstFormat,
                   int flags, int colorspace)
{
    struct SwsContext * ctx;

    ctx = FUNC3();
    if ( ctx )
    {
        int srcRange, dstRange;

        srcRange = FUNC1(&srcFormat);
        dstRange = FUNC1(&dstFormat);
        flags |= SWS_FULL_CHR_H_INT | SWS_FULL_CHR_H_INP;

        FUNC0(ctx, "srcw", srcW, 0);
        FUNC0(ctx, "srch", srcH, 0);
        FUNC0(ctx, "src_range", srcRange, 0);
        FUNC0(ctx, "src_format", srcFormat, 0);
        FUNC0(ctx, "dstw", dstW, 0);
        FUNC0(ctx, "dsth", dstH, 0);
        FUNC0(ctx, "dst_range", dstRange, 0);
        FUNC0(ctx, "dst_format", dstFormat, 0);
        FUNC0(ctx, "sws_flags", flags, 0);

        FUNC7( ctx,
                      FUNC5( colorspace ), // src colorspace
                      srcRange, // src range 0 = MPG, 1 = JPG
                      FUNC5( colorspace ), // dst colorspace
                      dstRange, // dst range 0 = MPG, 1 = JPG
                      0,         // brightness
                      1 << 16,   // contrast
                      1 << 16 ); // saturation

        if (FUNC6(ctx, NULL, NULL) < 0) {
            FUNC2("Cannot initialize resampling context");
            FUNC4(ctx);
            ctx = NULL;
        }
    }
    return ctx;
}