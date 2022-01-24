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
typedef  TYPE_1__ YuiScudsp ;

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
 int /*<<< orphan*/  yui_scudsp_destroy ; 
 int /*<<< orphan*/  yui_scudsp_editedBp ; 
 int /*<<< orphan*/  yui_scudsp_editedReg ; 

__attribute__((used)) static void FUNC24 (YuiScudsp * scudsp) {
  FUNC23(FUNC5(scudsp), "SCU-DSP");
  FUNC22( FUNC5(scudsp), FALSE );

  scudsp->vbox = FUNC21(FALSE, 2);
  FUNC12( FUNC1( scudsp->vbox ),4 );
  FUNC11 (FUNC1 (scudsp), scudsp->vbox);  

  scudsp->hboxmain = FUNC14(FALSE, 2);
  FUNC12( FUNC1( scudsp->hboxmain ),4 );
  FUNC9( FUNC0( scudsp->vbox ), scudsp->hboxmain, FALSE, FALSE, 4 );

  scudsp->hbox = FUNC15();
  FUNC12( FUNC1( scudsp->hbox ),4 );
  FUNC9( FUNC0( scudsp->vbox ), scudsp->hbox, FALSE, FALSE, 4 ); 

  scudsp->vboxmain = FUNC21(FALSE, 2);
  FUNC12( FUNC1( scudsp->vboxmain ),4 );
  FUNC9( FUNC0( scudsp->hboxmain ), scudsp->vboxmain, FALSE, FALSE, 4 );

  /* unassembler frame */

  scudsp->uFrame = FUNC13("Disassembled code");
  FUNC9( FUNC0( scudsp->vboxmain ), scudsp->uFrame, FALSE, FALSE, 4 );
  
  scudsp->uLabel = FUNC16(NULL);
  FUNC11 (FUNC1 (scudsp->uFrame), scudsp->uLabel );

  /* Register list */

  scudsp->regListStore = FUNC17(2,G_TYPE_STRING,G_TYPE_STRING);
  scudsp->regList = FUNC20( FUNC3(scudsp->regListStore) );
  scudsp->regListRenderer1 = FUNC10();
  scudsp->regListRenderer2 = FUNC10();
  FUNC7(FUNC6(scudsp->regListRenderer2), "editable", TRUE, "mode", GTK_CELL_RENDERER_MODE_EDITABLE, NULL );
  scudsp->regListColumn1 = FUNC19("Register", scudsp->regListRenderer1, "text", 0, NULL);
  FUNC18(FUNC4(scudsp->regList), scudsp->regListColumn1);
  scudsp->regListColumn2 = FUNC19("Value", scudsp->regListRenderer2, "text", 1, NULL);
  FUNC18(FUNC4(scudsp->regList), scudsp->regListColumn2);
  FUNC9( FUNC0( scudsp->hboxmain ), scudsp->regList, FALSE, FALSE, 4 );
  FUNC8(FUNC6(scudsp->regListRenderer2), "edited", FUNC2(yui_scudsp_editedReg), scudsp );

  /* breakpoint list */

  scudsp->bpListStore = FUNC17(1,G_TYPE_STRING);
  scudsp->bpList = FUNC20( FUNC3(scudsp->bpListStore) );
  scudsp->bpListRenderer = FUNC10();
  FUNC7(FUNC6(scudsp->bpListRenderer), "editable", TRUE, "mode", GTK_CELL_RENDERER_MODE_EDITABLE, NULL );
  scudsp->bpListColumn = FUNC19("Breakpoints", scudsp->bpListRenderer, "text", 0, NULL);
  FUNC18(FUNC4(scudsp->bpList), scudsp->bpListColumn);
  FUNC9( FUNC0( scudsp->hboxmain ), scudsp->bpList, FALSE, FALSE, 4 );
  FUNC8(FUNC6(scudsp->bpListRenderer), "edited", FUNC2(yui_scudsp_editedBp), scudsp );

  FUNC8(FUNC6(scudsp), "delete-event", FUNC2(yui_scudsp_destroy), NULL);
}