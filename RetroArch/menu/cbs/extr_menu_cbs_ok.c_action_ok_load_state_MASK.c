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
struct TYPE_4__ {int menu_savestate_resume; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_LOAD_STATE ; 
 int /*<<< orphan*/  CMD_EVENT_RESUME ; 
 TYPE_2__* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   settings_t *settings = FUNC0();
   bool resume          = true;

   if (settings)
      resume = settings->bools.menu_savestate_resume;

   if (FUNC1(CMD_EVENT_LOAD_STATE) == -1)
      return FUNC2();

   if (resume)
      return FUNC1(CMD_EVENT_RESUME);

   return 0;
}