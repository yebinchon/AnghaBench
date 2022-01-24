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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ cl_int ;
struct TYPE_3__ {int nb_planes; int /*<<< orphan*/ * planes; } ;
typedef  TYPE_1__ AVOpenCLFrameDescriptor ;
typedef  int /*<<< orphan*/  AVHWFramesContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *opaque, uint8_t *data)
{
    AVHWFramesContext       *hwfc = opaque;
    AVOpenCLFrameDescriptor *desc = (AVOpenCLFrameDescriptor*)data;
    cl_int cle;
    int p;

    for (p = 0; p < desc->nb_planes; p++) {
        cle = FUNC2(desc->planes[p]);
        if (cle != CL_SUCCESS) {
            FUNC1(hwfc, AV_LOG_ERROR, "Failed to release plane %d: "
                   "%d.\n", p, cle);
        }
    }

    FUNC0(desc);
}