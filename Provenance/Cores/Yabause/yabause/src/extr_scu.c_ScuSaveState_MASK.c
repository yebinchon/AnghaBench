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
typedef  int /*<<< orphan*/  scudspregs_struct ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  Scu ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ScuDsp ; 
 scalar_t__ ScuRegs ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC3(FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };

   offset = FUNC1(fp, "SCU ", 1);

   // Write registers and internal variables
   FUNC2(&check, (void *)ScuRegs, sizeof(Scu), 1, fp);

   // Write DSP area
   FUNC2(&check, (void *)ScuDsp, sizeof(scudspregs_struct), 1, fp);

   return FUNC0(fp, offset);
}