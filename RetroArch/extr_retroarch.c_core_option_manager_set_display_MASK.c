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
struct TYPE_5__ {size_t size; TYPE_1__* opts; } ;
typedef  TYPE_2__ core_option_manager_t ;
struct TYPE_4__ {char const* key; int visible; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

__attribute__((used)) static void FUNC2(core_option_manager_t *opt,
      const char *key, bool visible)
{
   size_t i;

   if (!opt || FUNC0(key))
      return;

   for (i = 0; i < opt->size; i++)
   {
      if (FUNC0(opt->opts[i].key))
         continue;

      if (FUNC1(opt->opts[i].key, key))
      {
         opt->opts[i].visible = visible;
         return;
      }
   }
}