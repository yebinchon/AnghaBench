#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_USER ; 
 unsigned int MENU_SETTINGS_INPUT_DESC_BEGIN ; 
 int RARCH_FIRST_CUSTOM_BIND ; 
 char* FUNC0 (unsigned int) ; 
 char* FUNC1 (unsigned int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC4(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   unsigned offset = (type - MENU_SETTINGS_INPUT_DESC_BEGIN)
      / (RARCH_FIRST_CUSTOM_BIND + 8);

   FUNC3(s, len, "%s #%d: %s",
         FUNC2(MENU_ENUM_LABEL_VALUE_USER),
         offset + 1,
         FUNC0(offset) ?
         FUNC0(offset) :
         (FUNC1(offset) ?
          FUNC1(offset) :
          FUNC2(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE)));
   return 0;
}