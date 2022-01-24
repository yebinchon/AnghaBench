#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__* boolean; } ;
struct TYPE_8__ {TYPE_3__ target; } ;
struct TYPE_11__ {TYPE_1__ value; } ;
typedef  TYPE_4__ rarch_setting_t ;
struct TYPE_12__ {TYPE_2__* list; } ;
typedef  TYPE_5__ file_list_t ;
struct TYPE_9__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_OFF ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ON ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC3(file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   rarch_setting_t *setting = FUNC0(list->list[i].label);

   *s = '\0';
   *w = 19;

   if (setting)
   {
      if (*setting->value.target.boolean)
         FUNC2(s, FUNC1(MENU_ENUM_LABEL_VALUE_ON), len);
      else
         FUNC2(s, FUNC1(MENU_ENUM_LABEL_VALUE_OFF), len);
   }

   FUNC2(s2, path, len2);
}