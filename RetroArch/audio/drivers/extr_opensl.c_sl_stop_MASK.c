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
struct TYPE_2__ {int is_paused; int /*<<< orphan*/  player; } ;
typedef  TYPE_1__ sl_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SL_PLAYSTATE_STOPPED ; 
 scalar_t__ SL_RESULT_SUCCESS ; 

__attribute__((used)) static bool FUNC1(void *data)
{
   sl_t      *sl = (sl_t*)data;
   sl->is_paused = (FUNC0(sl->player, SL_PLAYSTATE_STOPPED)
         == SL_RESULT_SUCCESS) ? true : false;

   return sl->is_paused ? true : false;
}