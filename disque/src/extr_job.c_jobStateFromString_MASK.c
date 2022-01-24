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

/* Variables and functions */
 int JOB_STATE_ACKED ; 
 int JOB_STATE_ACTIVE ; 
 int JOB_STATE_QUEUED ; 
 int JOB_STATE_WAIT_REPL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

int FUNC1(char *state) {
    if (!FUNC0(state,"wait-repl")) return JOB_STATE_WAIT_REPL;
    else if (!FUNC0(state,"active")) return JOB_STATE_ACTIVE;
    else if (!FUNC0(state,"queued")) return JOB_STATE_QUEUED;
    else if (!FUNC0(state,"acked")) return JOB_STATE_ACKED;
    else return -1;
}