#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_11__ {void* pix_fmt; int /*<<< orphan*/  d3d_format; } ;
struct TYPE_10__ {int /*<<< orphan*/  device; } ;
struct TYPE_9__ {TYPE_3__* hwctx; } ;
struct TYPE_8__ {void** valid_hw_formats; void** valid_sw_formats; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ AVHWFramesConstraints ;
typedef  TYPE_2__ AVHWDeviceContext ;
typedef  TYPE_3__ AVD3D11VADeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* AV_PIX_FMT_D3D11 ; 
 void* AV_PIX_FMT_NONE ; 
 int D3D11_FORMAT_SUPPORT_TEXTURE2D ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int) ; 
 TYPE_4__* supported_formats ; 

__attribute__((used)) static int FUNC5(AVHWDeviceContext *ctx,
                                          const void *hwconfig,
                                          AVHWFramesConstraints *constraints)
{
    AVD3D11VADeviceContext *device_hwctx = ctx->hwctx;
    int nb_sw_formats = 0;
    HRESULT hr;
    int i;

    constraints->valid_sw_formats = FUNC4(FUNC1(supported_formats) + 1,
                                                    sizeof(*constraints->valid_sw_formats));
    if (!constraints->valid_sw_formats)
        return FUNC0(ENOMEM);

    for (i = 0; i < FUNC1(supported_formats); i++) {
        UINT format_support = 0;
        hr = FUNC2(device_hwctx->device, supported_formats[i].d3d_format, &format_support);
        if (FUNC3(hr) && (format_support & D3D11_FORMAT_SUPPORT_TEXTURE2D))
            constraints->valid_sw_formats[nb_sw_formats++] = supported_formats[i].pix_fmt;
    }
    constraints->valid_sw_formats[nb_sw_formats] = AV_PIX_FMT_NONE;

    constraints->valid_hw_formats = FUNC4(2, sizeof(*constraints->valid_hw_formats));
    if (!constraints->valid_hw_formats)
        return FUNC0(ENOMEM);

    constraints->valid_hw_formats[0] = AV_PIX_FMT_D3D11;
    constraints->valid_hw_formats[1] = AV_PIX_FMT_NONE;

    return 0;
}