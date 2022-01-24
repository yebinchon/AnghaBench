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

/* Variables and functions */
 scalar_t__ cheevo_badge ; 
 int /*<<< orphan*/ * cheevo_title ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

__attribute__((used)) static void FUNC2(void *userdata)
{
   if (cheevo_title)
   {
      FUNC0(cheevo_title);
      cheevo_title = NULL;
   }

   if (cheevo_badge)
   {
      FUNC1(&cheevo_badge);
      cheevo_badge = 0;
   }
}