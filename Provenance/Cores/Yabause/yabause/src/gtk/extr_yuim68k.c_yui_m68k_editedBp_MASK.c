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
typedef  int u32 ;
typedef  char gchar ;
struct TYPE_3__ {int* cbp; int /*<<< orphan*/  bpListStore; } ;
typedef  TYPE_1__ YuiM68k ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRendererText ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*,char**,int) ; 

__attribute__((used)) static void FUNC11( GtkCellRendererText *cellrenderertext,
			     gchar *arg1,
			     gchar *arg2,
			     YuiM68k *m68k) {
  /* breakpoint <arg1> has been set to address <arg2> */

  GtkTreeIter iter;
  char bptext[10];
  char *endptr;
  int i = FUNC4(arg1);
  u32 addr;
  FUNC6( FUNC1( m68k->bpListStore ), &iter, arg1 );
  addr = FUNC10(arg2, &endptr, 16 );
  if ((endptr - arg2 < FUNC9(arg2)) || (!addr)) addr = 0xFFFFFFFF;
  if ( m68k->cbp[i] != 0xFFFFFFFF) FUNC3(m68k->cbp[i]);
  m68k->cbp[i] = 0xFFFFFFFF;

  if ((addr!=0xFFFFFFFF)&&(FUNC2(addr) == 0)) {
   
    FUNC7(bptext, "%08X", (int)addr);
    m68k->cbp[i] = addr;
  } else FUNC8(bptext,"<empty>");
  FUNC5( FUNC0( m68k->bpListStore ), &iter, 0, bptext, -1 );
}