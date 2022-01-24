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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  slto ;
typedef  int /*<<< orphan*/  mtxspin ;

/* Variables and functions */
 int LockTimeOut ; 
 int LockTimeOutUsec ; 
 int MutexSpin ; 
 int NSEC_PER_SEC ; 
 int NSEC_PER_USEC ; 
 scalar_t__ FUNC0 (char*,int*,int) ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 

void
FUNC2(void)
{
	uint64_t        abstime;
	uint64_t        mtxspin;
	uint64_t        default_timeout_ns = NSEC_PER_SEC>>2;
	uint32_t        slto;

	if (FUNC0("slto_us", &slto, sizeof (slto)))
		default_timeout_ns = slto * NSEC_PER_USEC;

	FUNC1(default_timeout_ns, &abstime);
	LockTimeOutUsec = (uint32_t)(abstime / NSEC_PER_USEC);
	LockTimeOut = (uint32_t)abstime;

	if (FUNC0("mtxspin", &mtxspin, sizeof (mtxspin))) {
		if (mtxspin > USEC_PER_SEC>>4)
			mtxspin =  USEC_PER_SEC>>4;
			FUNC1(mtxspin*NSEC_PER_USEC, &abstime);
	} else {
		FUNC1(10*NSEC_PER_USEC, &abstime);
	}
	MutexSpin = abstime;
}