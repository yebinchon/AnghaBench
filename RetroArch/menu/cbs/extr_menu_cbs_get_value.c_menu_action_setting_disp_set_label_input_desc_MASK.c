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
struct TYPE_6__ {unsigned int** input_remap_ids; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_8__ {char*** input_desc_btn; } ;
typedef  TYPE_3__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  file_list_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned int MENU_SETTINGS_INPUT_DESC_BEGIN ; 
 int RARCH_FIRST_CUSTOM_BIND ; 
 unsigned int RARCH_UNMAPPED ; 
 TYPE_2__* FUNC0 () ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC5(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   rarch_system_info_t *system           = FUNC1();
   settings_t *settings                  = FUNC0();
   const char* descriptor                = NULL;
   char buf[256];

   unsigned btn_idx, user_idx, remap_idx;

   if (!settings)
      return;

   user_idx  = (type - MENU_SETTINGS_INPUT_DESC_BEGIN) / (RARCH_FIRST_CUSTOM_BIND + 8);
   btn_idx   = (type - MENU_SETTINGS_INPUT_DESC_BEGIN) - (RARCH_FIRST_CUSTOM_BIND + 8) * user_idx;
   remap_idx =
      settings->uints.input_remap_ids[user_idx][btn_idx];

   if (!system)
      return;

   if (remap_idx != RARCH_UNMAPPED)
      descriptor = system->input_desc_btn[user_idx][remap_idx];

   if (!FUNC3(descriptor) && remap_idx < RARCH_FIRST_CUSTOM_BIND)
      FUNC4(s, descriptor, len);
   else if (!FUNC3(descriptor) && remap_idx >= RARCH_FIRST_CUSTOM_BIND && remap_idx % 2 == 0)
   {
      FUNC2(buf, sizeof(buf), "%s %c", descriptor, '+');
      FUNC4(s, buf, len);
   }
   else if (!FUNC3(descriptor) && remap_idx >= RARCH_FIRST_CUSTOM_BIND && remap_idx % 2 != 0)
   {
      FUNC2(buf, sizeof(buf), "%s %c", descriptor, '-');
      FUNC4(s, buf, len);
   }
   else
      FUNC4(s, "---", len);

   *w = 19;
   FUNC4(s2, path, len2);
}