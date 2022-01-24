#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int int64_t ;
struct TYPE_3__ {int time_den; int time_num; } ;
typedef  TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int64_t FUNC2(VC_CONTAINER_TRACK_MODULE_T *track_module, uint64_t ticks)
{
   int64_t time;
   FUNC1(track_module->time_den != 0);
   time = FUNC0(1000000) * track_module->time_num * ticks / track_module->time_den;
   return time;
}