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
struct TYPE_6__ {unsigned int* input_joypad_map; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_8__ {unsigned int index_offset; } ;
typedef  TYPE_3__ rarch_setting_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DISABLED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_PORT ; 
 TYPE_2__* FUNC0 () ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 () ; 
 char* FUNC3 (unsigned int) ; 
 char* FUNC4 (unsigned int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC9(rarch_setting_t *setting, char *s,
      size_t len)
{
   unsigned index_offset, map = 0;
   unsigned max_devices      = FUNC2();
   settings_t      *settings = FUNC0();

   if (!setting)
      return;

   index_offset = setting->index_offset;
   map          = settings->uints.input_joypad_map[index_offset];

   if (map < max_devices)
   {
      const char *device_name = FUNC3(map) ?
         FUNC3(map) : FUNC4(map);

      if (!FUNC7(device_name))
      {
         unsigned idx = FUNC1(map);

         /*if idx is non-zero, it's part of a set*/
         if ( idx > 0)
            FUNC6(s, len,
                  "%s (#%u)",
                  device_name,
                  idx);
         else
            FUNC8(s, device_name, len);
      }
      else
         FUNC6(s, len,
               "%s (%s #%u)",
               FUNC5(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE),
               FUNC5(MENU_ENUM_LABEL_VALUE_PORT),
               map);
   }
   else
      FUNC8(s, FUNC5(MENU_ENUM_LABEL_VALUE_DISABLED), len);
}