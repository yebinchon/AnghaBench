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
struct TYPE_2__ {int /*<<< orphan*/  is_paused; } ;
typedef  TYPE_1__ al_t ;

/* Variables and functions */

__attribute__((used)) static bool FUNC0(void *data)
{
   al_t *al = (al_t*)data;
   if (!al)
      return false;
   return !al->is_paused;
}