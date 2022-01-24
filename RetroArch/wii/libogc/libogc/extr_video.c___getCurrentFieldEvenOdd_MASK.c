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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ nhlines; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_1__* currTiming ; 

__attribute__((used)) static inline u32 FUNC1()
{
	u32 hline;

	hline = FUNC0();
	if(hline<currTiming->nhlines) return 1;

	return 0;
}