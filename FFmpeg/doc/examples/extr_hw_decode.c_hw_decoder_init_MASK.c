#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_3__ {int /*<<< orphan*/  hw_device_ctx; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hw_device_ctx ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(AVCodecContext *ctx, const enum AVHWDeviceType type)
{
    int err = 0;

    if ((err = FUNC1(&hw_device_ctx, type,
                                      NULL, NULL, 0)) < 0) {
        FUNC2(stderr, "Failed to create specified HW device.\n");
        return err;
    }
    ctx->hw_device_ctx = FUNC0(hw_device_ctx);

    return err;
}