#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* Function; struct TYPE_5__* mem; } ;
typedef  TYPE_1__ JIT_BPF_Filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(JIT_BPF_Filter *Filter){
	
#ifdef NTKERNEL
	ExFreePool(Filter->mem);
	ExFreePool(Filter->Function);
	ExFreePool(Filter);
#else
	FUNC1(Filter->mem);
	FUNC1(Filter->Function);
	FUNC1(Filter);
#endif

}