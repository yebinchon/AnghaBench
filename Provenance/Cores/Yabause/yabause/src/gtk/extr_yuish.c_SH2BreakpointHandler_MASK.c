#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  PC; } ;
typedef  TYPE_1__ sh2regs_struct ;
struct TYPE_9__ {int /*<<< orphan*/  debugsh; } ;
typedef  TYPE_2__ YuiSh ;
typedef  int /*<<< orphan*/  SH2_struct ;

/* Variables and functions */
 int /*<<< orphan*/ * MSH2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (SH2_struct *context, u32 addr, void *userdata) {

  FUNC6(yui);
  {
    sh2regs_struct sh2regs;
    YuiSh* sh2 = FUNC3(FUNC5( yui, context == MSH2 ));
    
    FUNC0(sh2->debugsh, &sh2regs);
    FUNC2(sh2, &sh2regs);
    FUNC1(sh2, sh2regs.PC);  
  }
  FUNC4(); /* execution is suspended inside a normal cycle - enter secondary gtk loop */
}