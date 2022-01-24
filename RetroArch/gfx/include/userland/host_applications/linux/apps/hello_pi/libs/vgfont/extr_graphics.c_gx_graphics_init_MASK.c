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
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

VCOS_STATUS_T FUNC4(const char *font_dir)
{
   GX_CLIENT_STATE_T save;
   VCOS_STATUS_T rc;

   FUNC3(&save, NULL);

   rc = FUNC1();
   if (rc == VCOS_SUCCESS)
      rc = FUNC0(font_dir);

   FUNC2(&save);

   return rc;
}