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
 int /*<<< orphan*/  KBI ; 
 int /*<<< orphan*/  KBIBack ; 
 int /*<<< orphan*/  KBIBackRM ; 
 int /*<<< orphan*/  KBIRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ initdone ; 

void FUNC4(void)
{
 if(initdone)
 {
  FUNC2(9,&KBIBack);
  FUNC0(&KBI);

  FUNC3(9,&KBIBackRM);
  FUNC1(&KBIRM);
  initdone=0;
 }
}