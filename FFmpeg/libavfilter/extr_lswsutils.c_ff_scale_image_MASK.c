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
struct SwsContext {int dummy; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ **,int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct SwsContext*) ; 
 struct SwsContext* FUNC5 (int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct SwsContext*,int /*<<< orphan*/  const* const*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 

int FUNC7(uint8_t *dst_data[4], int dst_linesize[4],
                   int dst_w, int dst_h, enum AVPixelFormat dst_pix_fmt,
                   uint8_t * const src_data[4], int src_linesize[4],
                   int src_w, int src_h, enum AVPixelFormat src_pix_fmt,
                   void *log_ctx)
{
    int ret;
    struct SwsContext *sws_ctx = FUNC5(src_w, src_h, src_pix_fmt,
                                                dst_w, dst_h, dst_pix_fmt,
                                                0, NULL, NULL, NULL);
    if (!sws_ctx) {
        FUNC3(log_ctx, AV_LOG_ERROR,
               "Impossible to create scale context for the conversion "
               "fmt:%s s:%dx%d -> fmt:%s s:%dx%d\n",
               FUNC1(src_pix_fmt), src_w, src_h,
               FUNC1(dst_pix_fmt), dst_w, dst_h);
        ret = FUNC0(EINVAL);
        goto end;
    }

    if ((ret = FUNC2(dst_data, dst_linesize, dst_w, dst_h, dst_pix_fmt, 16)) < 0)
        goto end;
    ret = 0;
    FUNC6(sws_ctx, (const uint8_t * const*)src_data, src_linesize, 0, src_h, dst_data, dst_linesize);

end:
    FUNC4(sws_ctx);
    return ret;
}