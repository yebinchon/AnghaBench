#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * path_c; int /*<<< orphan*/  path; int /*<<< orphan*/ * path_b; } ;
typedef  TYPE_1__ menu_displaylist_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYLIST_DATABASE_QUERY ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
      menu_displaylist_info_t *info)
{
   if (!FUNC3(info->path_b))
      FUNC1(info->path_b);
   if (!FUNC3(info->path_c))
      FUNC1(info->path_c);

   info->path_b    = FUNC2(info->path);
   info->path_c    = NULL;

   return FUNC0(info, DISPLAYLIST_DATABASE_QUERY);
}