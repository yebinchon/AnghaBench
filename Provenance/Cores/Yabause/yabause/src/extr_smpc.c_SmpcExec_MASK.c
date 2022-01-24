#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ s32 ;
struct TYPE_6__ {int timing; } ;
struct TYPE_5__ {int COMREG; scalar_t__ SF; } ;
struct TYPE_4__ {int LineCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__* SmpcInternalVars ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* SmpcRegs ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ intback_wait_for_line ; 
 TYPE_1__ yabsys ; 

void FUNC12(s32 t) {
   if (SmpcInternalVars->timing > 0) {

      if (intback_wait_for_line)
      {
         if (yabsys.LineCount == 207)
         {
            SmpcInternalVars->timing = -1;
            intback_wait_for_line = 0;
         }
      }
      SmpcInternalVars->timing -= t;
      if (SmpcInternalVars->timing <= 0) {
         switch(SmpcRegs->COMREG) {
            case 0x0:
               FUNC0("smpc\t: MSHON not implemented\n");
               break;
            case 0x2:
               FUNC0("smpc\t: SSHON\n");
               FUNC11();
               break;
            case 0x3:
               FUNC0("smpc\t: SSHOFF\n");
               FUNC10();
               break;
            case 0x6:
               FUNC0("smpc\t: SNDON\n");
               FUNC9();
               break;
            case 0x7:
               FUNC0("smpc\t: SNDOFF\n");
               FUNC8();
               break;
            case 0x8:
               FUNC0("smpc\t: CDON not implemented\n");
               break;
            case 0x9:
               FUNC0("smpc\t: CDOFF not implemented\n");
               break;
            case 0xD:
               FUNC0("smpc\t: SYSRES not implemented\n");
               break;
            case 0xE:
               FUNC0("smpc\t: CKCHG352\n");
               FUNC2();
               break;
            case 0xF:
               FUNC0("smpc\t: CKCHG320\n");
               FUNC1();
               break;
            case 0x10:
               FUNC0("smpc\t: INTBACK\n");
               FUNC3();
               break;
            case 0x17:
               FUNC0("smpc\t: SETSMEM\n");
               FUNC7();
               break;
            case 0x18:
               FUNC0("smpc\t: NMIREQ\n");
               FUNC4();
               break;
            case 0x19:
               FUNC0("smpc\t: RESENAB\n");
               FUNC6();
               break;
            case 0x1A:
               FUNC0("smpc\t: RESDISA\n");
               FUNC5();
               break;
            default:
               FUNC0("smpc\t: Command %02X not implemented\n", SmpcRegs->COMREG);
               break;
         }

         SmpcRegs->SF = 0;
      }
   }
}