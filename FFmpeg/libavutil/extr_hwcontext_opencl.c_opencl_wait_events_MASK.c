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
typedef  scalar_t__ cl_int ;
typedef  int /*<<< orphan*/  cl_event ;
typedef  int /*<<< orphan*/  AVHWFramesContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVHWFramesContext *hwfc,
                              cl_event *events, int nb_events)
{
    cl_int cle;
    int i;

    cle = FUNC3(nb_events, events);
    if (cle != CL_SUCCESS) {
        FUNC1(hwfc, AV_LOG_ERROR, "Failed to wait for event "
               "completion: %d.\n", cle);
        return FUNC0(EIO);
    }

    for (i = 0; i < nb_events; i++) {
        cle = FUNC2(events[i]);
        if (cle != CL_SUCCESS) {
            FUNC1(hwfc, AV_LOG_ERROR, "Failed to release "
                   "event: %d.\n", cle);
        }
    }

    return 0;
}