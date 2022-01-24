#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_mem ;
typedef  scalar_t__ cl_int ;
typedef  int /*<<< orphan*/  cl_event ;
struct TYPE_17__ {TYPE_1__* internal; } ;
struct TYPE_16__ {TYPE_2__* source; TYPE_3__* priv; } ;
struct TYPE_15__ {int /*<<< orphan*/  command_queue; } ;
struct TYPE_14__ {int /*<<< orphan*/ * address; } ;
struct TYPE_13__ {scalar_t__* data; } ;
struct TYPE_12__ {TYPE_4__* priv; } ;
typedef  TYPE_3__ OpenCLMapping ;
typedef  TYPE_4__ OpenCLFramesContext ;
typedef  TYPE_5__ HWMapDescriptor ;
typedef  TYPE_6__ AVHWFramesContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_NUM_DATA_POINTERS ; 
 scalar_t__ CL_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(AVHWFramesContext *hwfc,
                               HWMapDescriptor *hwmap)
{
    OpenCLFramesContext *priv = hwfc->internal->priv;
    OpenCLMapping *map = hwmap->priv;
    cl_event events[AV_NUM_DATA_POINTERS];
    int p, e;
    cl_int cle;

    for (p = e = 0; p < FUNC0(map->address); p++) {
        if (!map->address[p])
            break;

        cle = FUNC3(priv->command_queue,
                                      (cl_mem)hwmap->source->data[p],
                                      map->address[p],
                                      0, NULL, &events[e]);
        if (cle != CL_SUCCESS) {
            FUNC2(hwfc, AV_LOG_ERROR, "Failed to unmap OpenCL "
                   "image plane %d: %d.\n", p, cle);
        }
        ++e;
    }

    FUNC4(hwfc, events, e);

    FUNC1(map);
}