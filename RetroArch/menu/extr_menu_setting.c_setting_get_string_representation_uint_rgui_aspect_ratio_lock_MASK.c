#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* unsigned_integer; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef  TYPE_3__ rarch_setting_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_LOCK_FIT_SCREEN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_LOCK_INTEGER ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_LOCK_NONE ; 
#define  RGUI_ASPECT_RATIO_LOCK_FIT_SCREEN 130 
#define  RGUI_ASPECT_RATIO_LOCK_INTEGER 129 
#define  RGUI_ASPECT_RATIO_LOCK_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   switch (*setting->value.target.unsigned_integer)
   {
      case RGUI_ASPECT_RATIO_LOCK_NONE:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_LOCK_NONE),
               len);
         break;
      case RGUI_ASPECT_RATIO_LOCK_FIT_SCREEN:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_LOCK_FIT_SCREEN),
               len);
         break;
      case RGUI_ASPECT_RATIO_LOCK_INTEGER:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_LOCK_INTEGER),
               len);
         break;
   }
}