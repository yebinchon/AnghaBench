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
struct TYPE_3__ {int /*<<< orphan*/  detect_content_path; } ;
typedef  TYPE_1__ menu_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t,size_t,char const*,char const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char,int) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 

__attribute__((used)) static int FUNC4(
      const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_handle_t *menu                 = FUNC3();

   if (!menu)
      return FUNC2();

   FUNC1(menu->detect_content_path,
         menu->detect_content_path, path,
         '#', sizeof(menu->detect_content_path));

   type = 0;
   label = NULL;

   return FUNC0(
         MSG_UNKNOWN, idx, entry_idx,
         path, label, type, true);
}