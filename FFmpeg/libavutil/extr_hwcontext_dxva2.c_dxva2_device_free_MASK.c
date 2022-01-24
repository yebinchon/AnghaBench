#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ devmgr; } ;
struct TYPE_7__ {TYPE_1__* user_opaque; TYPE_3__* hwctx; } ;
struct TYPE_6__ {scalar_t__ device_handle; scalar_t__ dxva2lib; scalar_t__ d3dlib; scalar_t__ d3d9; scalar_t__ d3d9device; } ;
typedef  TYPE_1__ DXVA2DevicePriv ;
typedef  TYPE_2__ AVHWDeviceContext ;
typedef  TYPE_3__ AVDXVA2DeviceContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(AVHWDeviceContext *ctx)
{
    AVDXVA2DeviceContext *hwctx = ctx->hwctx;
    DXVA2DevicePriv       *priv = ctx->user_opaque;

    if (hwctx->devmgr && priv->device_handle != INVALID_HANDLE_VALUE)
        FUNC2(hwctx->devmgr, priv->device_handle);

    if (hwctx->devmgr)
        FUNC3(hwctx->devmgr);

    if (priv->d3d9device)
        FUNC1(priv->d3d9device);

    if (priv->d3d9)
        FUNC0(priv->d3d9);

    if (priv->d3dlib)
        FUNC5(priv->d3dlib);

    if (priv->dxva2lib)
        FUNC5(priv->dxva2lib);

    FUNC4(&ctx->user_opaque);
}