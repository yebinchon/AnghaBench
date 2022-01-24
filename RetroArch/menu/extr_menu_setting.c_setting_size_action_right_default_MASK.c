#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ menu_navigation_wraparound_enable; } ;
struct TYPE_12__ {TYPE_1__ bools; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_10__ {float* sizet; } ;
struct TYPE_11__ {TYPE_2__ target; } ;
struct TYPE_13__ {double max; double min; TYPE_3__ value; scalar_t__ enforce_maxrange; } ;
typedef  TYPE_5__ rarch_setting_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 () ; 
 float FUNC1 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC2(
      rarch_setting_t *setting, bool wraparound)
{
   double               max  = 0.0f;
   float                step = 0.0f;

   if (!setting)
      return -1;

   max = setting->max;

   (void)wraparound; /* TODO/FIXME - handle this */

   step = FUNC1(setting);

   *setting->value.target.sizet =
      *setting->value.target.sizet + step;

   if (setting->enforce_maxrange)
   {
      if (*setting->value.target.sizet > max)
      {
         settings_t *settings = FUNC0();

         double           min = setting->min;

         if (settings && settings->bools.menu_navigation_wraparound_enable)
            *setting->value.target.sizet = min;
         else
            *setting->value.target.sizet = max;
      }
   }

   return 0;
}