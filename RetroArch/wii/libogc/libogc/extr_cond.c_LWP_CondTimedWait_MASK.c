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
typedef  int /*<<< orphan*/  u64 ;
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  mutex_t ;
typedef  int /*<<< orphan*/  cond_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LWP_THREADQ_NOTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec const*) ; 

s32 FUNC2(cond_t cond,mutex_t mutex,const struct timespec *abstime)
{
	u64 timeout = LWP_THREADQ_NOTIMEOUT;
	bool timedout = FALSE;

	if(abstime) timeout = FUNC1(abstime);
	return FUNC0(cond,mutex,timeout,timedout);
}