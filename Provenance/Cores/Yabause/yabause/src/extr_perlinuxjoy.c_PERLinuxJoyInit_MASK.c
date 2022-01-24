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
typedef  int /*<<< orphan*/  perlinuxjoy_struct ;
struct TYPE_4__ {int gl_pathc; int /*<<< orphan*/ * gl_pathv; } ;
typedef  TYPE_1__ glob_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int joycount ; 
 scalar_t__ joysticks ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(void)
{
   int i;
   int fd;
   glob_t globbuf;

   FUNC1("/dev/input/js*", 0, NULL, &globbuf);

   joycount = globbuf.gl_pathc;
   joysticks = FUNC3(sizeof(perlinuxjoy_struct) * joycount);

   for(i = 0;i < globbuf.gl_pathc;i++)
      FUNC0(joysticks + i, globbuf.gl_pathv[i]);

   FUNC2(&globbuf);

   return 0;
}