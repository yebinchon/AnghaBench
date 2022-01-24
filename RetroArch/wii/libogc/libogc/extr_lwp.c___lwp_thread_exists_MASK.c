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
typedef  scalar_t__ lwp_t ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ LWP_OBJTYPE_THREAD ; 
 scalar_t__ LWP_THREAD_NULL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lwp_thr_objects ; 

BOOL FUNC3(lwp_t thr_id)
{
	if(thr_id==LWP_THREAD_NULL || FUNC1(thr_id)!=LWP_OBJTYPE_THREAD) return FALSE;
	return (FUNC2(&_lwp_thr_objects,FUNC0(thr_id))!=NULL);
}