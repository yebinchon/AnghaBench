#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int pm_offset; int /*<<< orphan*/  pm_selector; } ;
struct TYPE_7__ {int pm_offset; int /*<<< orphan*/  pm_selector; } ;

/* Variables and functions */
 int /*<<< orphan*/  IVector ; 
 TYPE_2__ SBIH ; 
 int /*<<< orphan*/  SBIHOld ; 
 TYPE_1__ SBIHRM ; 
 int /*<<< orphan*/  SBIHRMOld ; 
 int /*<<< orphan*/  SBIHRMRegs ; 
 scalar_t__ SBIRQHandler ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
 SBIH.pm_offset=SBIHRM.pm_offset=(int)SBIRQHandler;
 SBIH.pm_selector=SBIHRM.pm_selector=FUNC6();

 /* Get and set real mode interrupt vector.  */
 FUNC3(IVector,&SBIHRMOld);
 FUNC1(&SBIHRM, &SBIHRMRegs);
 FUNC5(IVector,&SBIHRM);  

 /* Get and set protected mode interrupt vector. */
 FUNC2(IVector,&SBIHOld);
 FUNC0(&SBIH);
 FUNC4(IVector,&SBIH); 

 return(1);
}