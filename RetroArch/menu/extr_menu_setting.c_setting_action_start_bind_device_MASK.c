#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * input_joypad_map; } ;
struct TYPE_8__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_9__ {size_t index_offset; } ;
typedef  TYPE_3__ rarch_setting_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(rarch_setting_t *setting)
{
   settings_t      *settings = FUNC0();

   if (!setting || !settings)
      return -1;

   FUNC1(settings,
         settings->uints.input_joypad_map[setting->index_offset], setting->index_offset);
   return 0;
}