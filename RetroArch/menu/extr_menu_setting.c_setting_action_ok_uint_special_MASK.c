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
struct TYPE_3__ {int enum_idx; } ;
typedef  TYPE_1__ rarch_setting_t ;
typedef  int /*<<< orphan*/  enum_idx ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_OK_DL_DROPDOWN_BOX_LIST_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC2(rarch_setting_t *setting, bool wraparound)
{
   char enum_idx[16];
   if (!setting)
      return -1;

   FUNC1(enum_idx, sizeof(enum_idx), "%d", setting->enum_idx);

   FUNC0(
         enum_idx, /* we will pass the enumeration index of the string as a path */
         NULL, NULL, 0, 0, 0,
         ACTION_OK_DL_DROPDOWN_BOX_LIST_SPECIAL);
   return 0;
}