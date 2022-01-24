#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {struct TYPE_16__* bpListRenderer; struct TYPE_16__* bpList; struct TYPE_16__* hboxmain; void* bpListColumn; void* bpListStore; struct TYPE_16__* regListRenderer2; struct TYPE_16__* regList; void* regListColumn2; void* regListColumn1; struct TYPE_16__* regListRenderer1; void* regListStore; struct TYPE_16__* uLabel; struct TYPE_16__* uFrame; struct TYPE_16__* vboxmain; struct TYPE_16__* hbox; struct TYPE_16__* vbox; } ;
typedef  TYPE_1__ YuiM68k ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_CELL_RENDERER_MODE_EDITABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  G_TYPE_STRING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC13 (char*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC15 () ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 
 void* FUNC17 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC19 (char*,TYPE_1__*,char*,int,int /*<<< orphan*/ *) ; 
 void* FUNC20 (int /*<<< orphan*/ ) ; 
 void* FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  yui_m68k_destroy ; 
 int /*<<< orphan*/  yui_m68k_editedBp ; 
 int /*<<< orphan*/  yui_m68k_editedReg ; 

__attribute__((used)) static void FUNC24 (YuiM68k * m68k) {
  FUNC23(FUNC5(m68k), "M68K");
  FUNC22( FUNC5(m68k), FALSE );

  m68k->vbox = FUNC21(FALSE, 2);
  FUNC12( FUNC1( m68k->vbox ),4 );
  FUNC11 (FUNC1 (m68k), m68k->vbox);  

  m68k->hboxmain = FUNC14(FALSE, 2);
  FUNC12( FUNC1( m68k->hboxmain ),4 );
  FUNC9( FUNC0( m68k->vbox ), m68k->hboxmain, FALSE, FALSE, 4 );

  m68k->hbox = FUNC15();
  FUNC12( FUNC1( m68k->hbox ),4 );
  FUNC9( FUNC0( m68k->vbox ), m68k->hbox, FALSE, FALSE, 4 ); 

  m68k->vboxmain = FUNC21(FALSE, 2);
  FUNC12( FUNC1( m68k->vboxmain ),4 );
  FUNC9( FUNC0( m68k->hboxmain ), m68k->vboxmain, FALSE, FALSE, 4 );

  /* unassembler frame */

  m68k->uFrame = FUNC13("Disassembled code");
  FUNC9( FUNC0( m68k->vboxmain ), m68k->uFrame, FALSE, FALSE, 4 );
  
  m68k->uLabel = FUNC16(NULL);
  FUNC11 (FUNC1 (m68k->uFrame), m68k->uLabel );

  /* Register list */

  m68k->regListStore = FUNC17(2,G_TYPE_STRING,G_TYPE_STRING);
  m68k->regList = FUNC20( FUNC3(m68k->regListStore) );
  m68k->regListRenderer1 = FUNC10();
  m68k->regListRenderer2 = FUNC10();
  FUNC7(FUNC6(m68k->regListRenderer2), "editable", TRUE, "mode", GTK_CELL_RENDERER_MODE_EDITABLE, NULL );
  m68k->regListColumn1 = FUNC19("Register", m68k->regListRenderer1, "text", 0, NULL);
  FUNC18(FUNC4(m68k->regList), m68k->regListColumn1);
  m68k->regListColumn2 = FUNC19("Value", m68k->regListRenderer2, "text", 1, NULL);
  FUNC18(FUNC4(m68k->regList), m68k->regListColumn2);
  FUNC9( FUNC0( m68k->hboxmain ), m68k->regList, FALSE, FALSE, 4 );
  FUNC8(FUNC6(m68k->regListRenderer2), "edited", FUNC2(yui_m68k_editedReg), m68k );

  /* breakpoint list */

  m68k->bpListStore = FUNC17(1,G_TYPE_STRING);
  m68k->bpList = FUNC20( FUNC3(m68k->bpListStore) );
  m68k->bpListRenderer = FUNC10();
  FUNC7(FUNC6(m68k->bpListRenderer), "editable", TRUE, "mode", GTK_CELL_RENDERER_MODE_EDITABLE, NULL );
  m68k->bpListColumn = FUNC19("Breakpoints", m68k->bpListRenderer, "text", 0, NULL);
  FUNC18(FUNC4(m68k->bpList), m68k->bpListColumn);
  FUNC9( FUNC0( m68k->hboxmain ), m68k->bpList, FALSE, FALSE, 4 );
  FUNC8(FUNC6(m68k->bpListRenderer), "edited", FUNC2(yui_m68k_editedBp), m68k );

  FUNC8(FUNC6(m68k), "delete-event", FUNC2(yui_m68k_destroy), NULL);
}