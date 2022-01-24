#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cheevos_leaderboards_enable; scalar_t__ cheevos_hardcore_mode_enable; scalar_t__ cheevos_test_unofficial; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  rcheevos_hardcore_paused ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
   settings_t *settings = FUNC0();

   FUNC1(true);

   if (settings)
   {
      if (settings->bools.cheevos_test_unofficial)
         FUNC1(false);

      if (settings->bools.cheevos_hardcore_mode_enable &&
          settings->bools.cheevos_leaderboards_enable  &&
          !rcheevos_hardcore_paused)
         FUNC2();
   }
}