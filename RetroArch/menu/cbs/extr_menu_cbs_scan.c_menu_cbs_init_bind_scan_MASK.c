#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ setting; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ ST_BIND ; 
 int /*<<< orphan*/ * action_scan_input_desc ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

int FUNC3(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   FUNC0(cbs, NULL);

   if (cbs->setting)
   {
      if (FUNC2(cbs->setting) == ST_BIND)
      {
         FUNC0(cbs, action_scan_input_desc);
         return 0;
      }
   }

   FUNC1(cbs, type);

   return -1;
}