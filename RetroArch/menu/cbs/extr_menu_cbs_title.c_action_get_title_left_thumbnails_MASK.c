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
struct TYPE_4__ {int /*<<< orphan*/  menu_driver; } ;
struct TYPE_5__ {TYPE_1__ arrays; } ;
typedef  TYPE_2__ settings_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;

/* Variables and functions */
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS ; 
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI ; 
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE ; 
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI ; 
 TYPE_2__* FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(
      const char *path, const char *label, unsigned menu_type, char *s, size_t len)
{
   settings_t *settings = FUNC0();
   const char *title    = NULL;
   enum msg_hash_enums label_value;

   /* Get label value */
   if (FUNC4(settings->arrays.menu_driver, "rgui"))
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI;
   else if (FUNC4(settings->arrays.menu_driver, "ozone"))
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE;
   else if (FUNC4(settings->arrays.menu_driver, "glui"))
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI;
   else
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS;

   title = FUNC1(label_value);

   if (s && !FUNC3(title))
   {
      FUNC2(s, title, len);
      return 1;
   }

   return 0;
}