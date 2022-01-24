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
struct TYPE_3__ {int /*<<< orphan*/  Buttons; } ;
typedef  int /*<<< orphan*/  SceSize ;
typedef  TYPE_1__ SceCtrlData ;

/* Variables and functions */
 int /*<<< orphan*/  buttons ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int thread_active ; 

__attribute__((used)) static int FUNC3(SceSize args, void *argp)
{
   SceCtrlData paddata;

   thread_active = 1;

   while (thread_active)
   {
      FUNC0(&paddata, 1);
      buttons = paddata.Buttons;
      FUNC1(1000000/60);
   }

   FUNC2(0);

   return 0;
}