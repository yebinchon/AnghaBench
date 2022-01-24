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
struct TYPE_3__ {int quit; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ VIDTEX_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(VIDTEX_T *vt, bool quit)
{
   FUNC0(&vt->mutex);
   bool old_quit = vt->quit;
   vt->quit = quit;
   FUNC1(&vt->mutex);

   return old_quit;
}