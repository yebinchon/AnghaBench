#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int index_offset; } ;
typedef  TYPE_1__ rarch_setting_t ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_AUTOCONFIG_FILE_ERROR_SAVING ; 
 int /*<<< orphan*/  MSG_AUTOCONFIG_FILE_SAVED_SUCCESSFULLY ; 
 scalar_t__ FUNC0 (char const*,unsigned int) ; 
 char* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(rarch_setting_t *setting,
      bool wraparound)
{
   unsigned index_offset     = 0;
   const char *name          = NULL;

   (void)wraparound;

   if (!setting)
      return -1;

   index_offset = setting->index_offset;
   name         = FUNC1(index_offset);

   if(!FUNC4(name) && FUNC0(name, index_offset))
      FUNC3(
            FUNC2(MSG_AUTOCONFIG_FILE_SAVED_SUCCESSFULLY), 1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   else
      FUNC3(
            FUNC2(MSG_AUTOCONFIG_FILE_ERROR_SAVING), 1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   return 0;
}