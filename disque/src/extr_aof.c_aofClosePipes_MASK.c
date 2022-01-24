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
struct TYPE_2__ {int /*<<< orphan*/  aof_pipe_read_ack_from_parent; int /*<<< orphan*/  aof_pipe_write_ack_to_child; int /*<<< orphan*/  aof_pipe_read_ack_from_child; int /*<<< orphan*/  aof_pipe_write_ack_to_parent; int /*<<< orphan*/  aof_pipe_read_data_from_parent; int /*<<< orphan*/  aof_pipe_write_data_to_child; int /*<<< orphan*/  el; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  AE_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 

void FUNC2(void) {
    FUNC0(server.el,server.aof_pipe_read_ack_from_child,AE_READABLE);
    FUNC0(server.el,server.aof_pipe_write_data_to_child,AE_WRITABLE);
    FUNC1(server.aof_pipe_write_data_to_child);
    FUNC1(server.aof_pipe_read_data_from_parent);
    FUNC1(server.aof_pipe_write_ack_to_parent);
    FUNC1(server.aof_pipe_read_ack_from_child);
    FUNC1(server.aof_pipe_write_ack_to_child);
    FUNC1(server.aof_pipe_read_ack_from_parent);
}