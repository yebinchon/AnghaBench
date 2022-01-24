#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ PC; scalar_t__ SR; scalar_t__* A; scalar_t__* D; } ;
typedef  TYPE_1__ m68kregs_struct ;
typedef  int /*<<< orphan*/  YuiM68k ;
struct TYPE_5__ {int /*<<< orphan*/  regListStore; } ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 TYPE_3__* yui_m68k ; 

__attribute__((used)) static void FUNC6( YuiM68k *m68k, m68kregs_struct *regs) {
  /* refresh the registery list */

  GtkTreeIter iter;
  char regstr[32];
  char valuestr[32];
  int i;
  
  for ( i = 0 ; i < 8 ; i++ ) {
    
    if ( i==0 ) FUNC3( FUNC1( yui_m68k->regListStore ), &iter );
    else FUNC4( FUNC1( yui_m68k->regListStore ), &iter );
    FUNC5(regstr, "D%d", i );
    FUNC5(valuestr, "%08x", (int)regs->D[i]);
    FUNC2( FUNC0( yui_m68k->regListStore ), &iter, 0, regstr, 1, valuestr, -1 );
  }
  for ( i = 0 ; i < 8 ; i++ ) {
    
    FUNC4( FUNC1( yui_m68k->regListStore ), &iter );
    FUNC5(regstr, "A%d", i );
    FUNC5(valuestr, "%08x", (int)regs->A[i]);
    FUNC2( FUNC0( yui_m68k->regListStore ), &iter, 0, regstr, 1, valuestr, -1 );
  }

  FUNC4( FUNC1( yui_m68k->regListStore ), &iter );
  FUNC5(valuestr, "%08x", (int)regs->SR);
  FUNC2( FUNC0( yui_m68k->regListStore ), &iter, 0, "SR", 1, valuestr, -1 );

  FUNC4( FUNC1( yui_m68k->regListStore ), &iter );
  FUNC5(valuestr, "%08x", (int)regs->PC);
  FUNC2( FUNC0( yui_m68k->regListStore ), &iter, 0, "PC", 1, valuestr, -1 );
}