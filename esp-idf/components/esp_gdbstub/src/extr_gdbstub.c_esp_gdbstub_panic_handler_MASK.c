#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_gdbstub_frame_t ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ paniced_task_index; int /*<<< orphan*/  signal; scalar_t__ current_task_index; int /*<<< orphan*/  regfile; int /*<<< orphan*/  paniced_frame; } ;

/* Variables and functions */
 scalar_t__ GDBSTUB_CUR_TASK_INDEX_UNKNOWN ; 
 scalar_t__ GDBSTUB_NOT_STARTED ; 
 scalar_t__ GDBSTUB_STARTED ; 
 int GDBSTUB_ST_ERR ; 
 scalar_t__ GDBSTUB_TASK_SUPPORT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char*,size_t) ; 
 int FUNC3 (unsigned char**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ s_scratch ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(esp_gdbstub_frame_t *frame)
{
#ifndef CONFIG_ESP_GDBSTUB_SUPPORT_TASKS
    FUNC0(frame, &s_scratch.regfile);
#else
    if (s_scratch.state == GDBSTUB_STARTED) {
        /* We have re-entered GDB Stub. Try disabling task support. */
        s_scratch.state = GDBSTUB_TASK_SUPPORT_DISABLED;
        /* Flush any pending GDB packet (this creates a garbage value) */
        esp_gdbstub_send_end();
    } else if (s_scratch.state == GDBSTUB_NOT_STARTED) {
        s_scratch.state = GDBSTUB_STARTED;
        /* Save the paniced frame and get the list of tasks */
        memcpy(&s_scratch.paniced_frame, frame, sizeof(*frame));
        esp_gdbstub_frame_to_regfile(frame, &s_scratch.regfile);
        init_task_info();
        find_paniced_task_index();
        /* Current task is the paniced task */
        if (s_scratch.paniced_task_index == GDBSTUB_CUR_TASK_INDEX_UNKNOWN) {
            s_scratch.current_task_index = 0;
        }
    }
#endif // CONFIG_ESP_GDBSTUB_SUPPORT_TASKS

    FUNC6();
    s_scratch.signal = FUNC1(frame);
    FUNC10();
    while (true) {
        unsigned char *cmd;
        size_t size;
        int res = FUNC3(&cmd, &size);
        if (res > 0) {
            /* character received instead of a command */
            continue;
        }
        if (res == GDBSTUB_ST_ERR) {
            FUNC5("E01");
            continue;
        }
        res = FUNC2(cmd, size);
        if (res == GDBSTUB_ST_ERR) {
            FUNC5(NULL);
        }
    }
}