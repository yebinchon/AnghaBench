#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct retro_controller_description {char* desc; } ;
struct TYPE_6__ {unsigned int size; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {TYPE_1__ ports; } ;
typedef  TYPE_2__ rarch_system_info_t ;
struct TYPE_8__ {unsigned int index_offset; } ;
typedef  TYPE_3__ rarch_setting_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NONE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RETROPAD ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RETROPAD_WITH_ANALOG ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_UNKNOWN ; 
#define  RETRO_DEVICE_ANALOG 130 
#define  RETRO_DEVICE_JOYPAD 129 
#define  RETRO_DEVICE_NONE 128 
 unsigned int FUNC0 (unsigned int) ; 
 struct retro_controller_description* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC6(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   unsigned index_offset, device;
   const struct retro_controller_description *desc = NULL;
   const char *name            = NULL;
   rarch_system_info_t *system = FUNC3();

   if (!setting)
      return;

   index_offset                = setting->index_offset;
   device                      = FUNC0(index_offset);

   if (system)
   {
      if (index_offset < system->ports.size)
         desc = FUNC1(
               &system->ports.data[index_offset],
               device);
   }

   if (desc)
      name = desc->desc;

   if (!name)
   {
      /* Find generic name. */
      switch (device)
      {
         case RETRO_DEVICE_NONE:
            name = FUNC2(MENU_ENUM_LABEL_VALUE_NONE);
            break;
         case RETRO_DEVICE_JOYPAD:
            name = FUNC2(MENU_ENUM_LABEL_VALUE_RETROPAD);
            break;
         case RETRO_DEVICE_ANALOG:
            name = FUNC2(MENU_ENUM_LABEL_VALUE_RETROPAD_WITH_ANALOG);
            break;
         default:
            name = FUNC2(MENU_ENUM_LABEL_VALUE_UNKNOWN);
            break;
      }
   }

   if (!FUNC4(name))
      FUNC5(s, name, len);
}