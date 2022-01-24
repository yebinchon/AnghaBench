#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  sh2regs_struct ;
struct TYPE_5__ {unsigned int addr; } ;
typedef  TYPE_1__ codebreakpoint_struct ;
struct TYPE_6__ {int lastCode; int /*<<< orphan*/  store; int /*<<< orphan*/  debugsh; } ;
typedef  TYPE_2__ YuiSh ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 char* GTK_STOCK_GO_FORWARD ; 
 char* GTK_STOCK_STOP ; 
 int MAX_BREAKPOINTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned int*,char*) ; 

__attribute__((used)) static void FUNC9( YuiSh *sh2, u32 addr) {
  /* refresh the assembler view. <addr> points the line to be highlighted. */

  int i, j;
  char lineBuf[64];
  u32 offset;
  GtkTreeIter iter;
  unsigned int address;
  char address_s[20];
  char command_s[64];
  codebreakpoint_struct *cbp;
  sh2regs_struct sh2regs;

  FUNC5(sh2->store);

  if ( addr - sh2->lastCode >= 20*2 ) offset = addr - (8*2);
  else offset = sh2->lastCode;
  sh2->lastCode = offset;

  cbp = FUNC2(sh2->debugsh);

  for (i = 0; i < 24; i++) {
    FUNC3(sh2->debugsh, &sh2regs);
    FUNC1(offset+2*i, FUNC0(offset+2*i), 0, &sh2regs, lineBuf);

    FUNC8(lineBuf, "0x%8X: %[^\n]", &address, command_s);
    FUNC7(address_s, "0x%08X", address);

    FUNC4(sh2->store, &iter);
    if ( offset + 2*i == addr ) {
      FUNC6(sh2->store, &iter, 0, GTK_STOCK_GO_FORWARD, -1);
    } else {
      for (j = 0;j < MAX_BREAKPOINTS - 1;j++) {
        if (cbp[j].addr == address) {
          FUNC6(sh2->store, &iter, 0, GTK_STOCK_STOP, -1);
        }
      }
    }

    FUNC6(sh2->store, &iter, 1, address_s, -1);

    FUNC6(sh2->store, &iter, 2, command_s, -1);
  }
}