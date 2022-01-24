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
struct TYPE_2__ {int val; int description; int module; int summary; int level; } ;
typedef  TYPE_1__ ctr_result_value ;
typedef  int Result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void FUNC1(Result val)
{
   ctr_result_value res;
   res.val = val;
   FUNC0("result      : 0x%08X\n", val);
   FUNC0("description : %u\n", res.description);
   FUNC0("module      : %u\n", res.module);
   FUNC0("summary     : %u\n", res.summary);
   FUNC0("level       : %u\n", res.level);
}