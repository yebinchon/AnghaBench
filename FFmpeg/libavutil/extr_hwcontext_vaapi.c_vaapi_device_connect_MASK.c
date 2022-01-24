#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VAStatus ;
typedef  int /*<<< orphan*/  VADisplay ;
struct TYPE_8__ {TYPE_1__* hwctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_1__ AVVAAPIDeviceContext ;
typedef  TYPE_2__ AVHWDeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  vaapi_device_log_error ; 
 int /*<<< orphan*/  vaapi_device_log_info ; 

__attribute__((used)) static int FUNC6(AVHWDeviceContext *ctx,
                                VADisplay display)
{
    AVVAAPIDeviceContext *hwctx = ctx->hwctx;
    int major, minor;
    VAStatus vas;

#if CONFIG_VAAPI_1
    vaSetErrorCallback(display, &vaapi_device_log_error, ctx);
    vaSetInfoCallback (display, &vaapi_device_log_info,  ctx);
#endif

    hwctx->display = display;

    vas = FUNC3(display, &major, &minor);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC1(ctx, AV_LOG_ERROR, "Failed to initialise VAAPI "
               "connection: %d (%s).\n", vas, FUNC2(vas));
        return FUNC0(EIO);
    }
    FUNC1(ctx, AV_LOG_VERBOSE, "Initialised VAAPI connection: "
           "version %d.%d\n", major, minor);

    return 0;
}