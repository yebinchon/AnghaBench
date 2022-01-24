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
struct TYPE_2__ {void* (* malloc ) (size_t) ;} ;

/* Variables and functions */
 TYPE_1__* _libkernel_functions ; 
 void* FUNC0 (size_t) ; 

__attribute__((visibility("hidden")))
void *
FUNC1(size_t size)
{
	return _libkernel_functions->malloc(size);
}