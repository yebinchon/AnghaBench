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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  fuse_pid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  keepalive_pipe ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_pipe_thread ; 

void
FUNC2 (void)
{
    pthread_t thread;
    fuse_pid = FUNC0();
    FUNC1(&thread, NULL, write_pipe_thread, keepalive_pipe);
}