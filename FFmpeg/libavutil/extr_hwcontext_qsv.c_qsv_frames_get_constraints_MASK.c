#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* pix_fmt; } ;
struct TYPE_5__ {void** valid_hw_formats; void** valid_sw_formats; } ;
typedef  TYPE_1__ AVHWFramesConstraints ;
typedef  int /*<<< orphan*/  AVHWDeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* AV_PIX_FMT_NONE ; 
 void* AV_PIX_FMT_QSV ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int,int) ; 
 TYPE_2__* supported_pixel_formats ; 

__attribute__((used)) static int FUNC3(AVHWDeviceContext *ctx,
                                      const void *hwconfig,
                                      AVHWFramesConstraints *constraints)
{
    int i;

    constraints->valid_sw_formats = FUNC2(FUNC1(supported_pixel_formats) + 1,
                                                    sizeof(*constraints->valid_sw_formats));
    if (!constraints->valid_sw_formats)
        return FUNC0(ENOMEM);

    for (i = 0; i < FUNC1(supported_pixel_formats); i++)
        constraints->valid_sw_formats[i] = supported_pixel_formats[i].pix_fmt;
    constraints->valid_sw_formats[FUNC1(supported_pixel_formats)] = AV_PIX_FMT_NONE;

    constraints->valid_hw_formats = FUNC2(2, sizeof(*constraints->valid_hw_formats));
    if (!constraints->valid_hw_formats)
        return FUNC0(ENOMEM);

    constraints->valid_hw_formats[0] = AV_PIX_FMT_QSV;
    constraints->valid_hw_formats[1] = AV_PIX_FMT_NONE;

    return 0;
}