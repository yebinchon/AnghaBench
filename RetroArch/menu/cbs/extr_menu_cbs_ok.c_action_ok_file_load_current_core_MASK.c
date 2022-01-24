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
 int /*<<< orphan*/  CORE_TYPE_PLAIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 

__attribute__((used)) static int FUNC3(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_handle_t *menu                 = FUNC2();

   if (!menu)
      return FUNC1();

   return FUNC0(
         menu->detect_content_path, CORE_TYPE_PLAIN);
}