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
struct TYPE_7__ {int /*<<< orphan*/  PC; } ;
typedef  TYPE_1__ sh2regs_struct ;
typedef  char gchar ;
struct TYPE_8__ {int /*<<< orphan*/  debugsh; int /*<<< orphan*/  bpListStore; } ;
typedef  TYPE_2__ YuiSh ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRendererText ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned int*) ; 
 int FUNC10 (char*) ; 
 unsigned int FUNC11 (char*,char**,int) ; 

__attribute__((used)) static void FUNC12( GtkCellRendererText *cellrenderertext,
			     gchar *arg1,
			     gchar *arg2,
			     YuiSh *sh2) {
  /* breakpoint <arg1> has been set to address <arg2> */

  GtkTreeIter iter;
  char *endptr;
  unsigned int addr;
  gchar * oldaddr_s;
  unsigned int oldaddr;

  FUNC8( FUNC0( sh2->bpListStore ), &iter, arg1 );

  FUNC7(FUNC0( sh2->bpListStore ), &iter, 0, &oldaddr_s, -1);
  FUNC9(oldaddr_s, "%8X", &oldaddr);
  FUNC6(oldaddr_s);

  FUNC2(sh2->debugsh, oldaddr);

  addr = FUNC11(arg2, &endptr, 16 );
  if ((endptr - arg2 < FUNC10(arg2)) || (!addr)) addr = 0xFFFFFFFF;

  if (addr != 0xFFFFFFFF) {
    FUNC1(sh2->debugsh, addr);
  }

  {
    sh2regs_struct sh2regs;
    FUNC3(sh2->debugsh, &sh2regs);
    FUNC5(sh2,sh2regs.PC);
    FUNC4(sh2);
  }
}