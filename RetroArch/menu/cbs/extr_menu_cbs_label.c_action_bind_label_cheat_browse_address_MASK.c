#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_list_t ;
struct TYPE_2__ {int /*<<< orphan*/  browse_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CHEAT_BROWSE_MEMORY ; 
 TYPE_1__ cheat_manager_state ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   FUNC1(s, len, FUNC0(MENU_ENUM_LABEL_VALUE_CHEAT_BROWSE_MEMORY), cheat_manager_state.browse_address);
   return 0;
}