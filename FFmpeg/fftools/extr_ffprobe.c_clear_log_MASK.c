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
struct TYPE_2__ {int /*<<< orphan*/  log_message; int /*<<< orphan*/  parent_name; int /*<<< orphan*/  context_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* log_buffer ; 
 int log_buffer_size ; 
 int /*<<< orphan*/  log_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(int need_lock)
{
    int i;

    if (need_lock)
        FUNC1(&log_mutex);
    for (i=0; i<log_buffer_size; i++) {
        FUNC0(&log_buffer[i].context_name);
        FUNC0(&log_buffer[i].parent_name);
        FUNC0(&log_buffer[i].log_message);
    }
    log_buffer_size = 0;
    if(need_lock)
        FUNC2(&log_mutex);
}