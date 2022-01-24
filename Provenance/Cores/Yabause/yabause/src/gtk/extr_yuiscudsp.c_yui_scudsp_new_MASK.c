#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {int addr; } ;
typedef  TYPE_1__ scucodebreakpoint_struct ;
typedef  int gint ;
typedef  char gchar ;
struct TYPE_34__ {int state; int* cbp; void* running_handler; void* paused_handler; int /*<<< orphan*/  hbox; int /*<<< orphan*/  action_group; struct TYPE_34__* buttonStep; int /*<<< orphan*/  bpListStore; int /*<<< orphan*/  regListStore; } ;
typedef  TYPE_2__ YuiWindow ;
typedef  TYPE_2__ GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkAccelGroup ;
typedef  int /*<<< orphan*/  GClosure ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_F7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (TYPE_2__*)) ; 
 int MAX_BREAKPOINTS ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int YUI_IS_INIT ; 
 int YUI_IS_RUNNING ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC11 (TYPE_2__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC17 () ; 
 TYPE_2__* FUNC18 (char*) ; 
 TYPE_2__* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 TYPE_2__* yui ; 
 TYPE_2__* yui_scudsp ; 
 int /*<<< orphan*/  yui_scudsp_breakpoint_handler ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 

GtkWidget * FUNC32(YuiWindow * y) {
  GtkWidget * dialog;
  GClosure *closureF7;
  GtkAccelGroup *accelGroup;
  const scucodebreakpoint_struct *cbp;
  gint i;
  yui = y;

  if ( yui_scudsp ) return FUNC2(yui_scudsp);
  
  dialog = FUNC2(FUNC9(FUNC27(), NULL));
  yui_scudsp = FUNC7(dialog);

  if (!( yui->state & YUI_IS_INIT )) {
    FUNC31(yui);
    FUNC30(yui);
  }

  FUNC6(&yui_scudsp_breakpoint_handler);

  for (i = 0; i < 23 ; i++) {
    
    GtkTreeIter iter;
    FUNC20( FUNC1( yui_scudsp->regListStore ), &iter );
  }	
  
  cbp = FUNC5();
  
  for (i = 0; i < MAX_BREAKPOINTS; i++) {
    
    GtkTreeIter iter;
    yui_scudsp->cbp[i] = cbp[i].addr;
    FUNC20( FUNC1( yui_scudsp->bpListStore ), &iter );
    if (cbp[i].addr != 0xFFFFFFFF) {
      
      gchar tempstr[20];
      FUNC24(tempstr, "%08X", (int)cbp[i].addr);
      FUNC21( FUNC1( yui_scudsp->bpListStore ), &iter, 0, tempstr, -1 );
    } else FUNC21( FUNC1( yui_scudsp->bpListStore ), &iter, 0, "<empty>", -1 );
  } 

  {
    GtkWidget * but2, * but3, * but4;
    
    yui_scudsp->buttonStep = FUNC19( "Step [F7]" );
    FUNC16( FUNC0( yui_scudsp->hbox ), yui_scudsp->buttonStep, FALSE, FALSE, 2 );
    FUNC10( yui_scudsp->buttonStep, "clicked", FUNC4(yui_scudsp_step), yui_scudsp );
    
    but2 = FUNC17();
    FUNC14(FUNC15(yui->action_group, "run"), but2);
    FUNC16(FUNC0(yui_scudsp->hbox), but2, FALSE, FALSE, 2);
    
    but3 = FUNC17();
    FUNC14(FUNC15(yui->action_group, "pause"), but3);
    FUNC16(FUNC0(yui_scudsp->hbox), but3, FALSE, FALSE, 2);
    
    but4 = FUNC18("gtk-close");
    FUNC11(but4, "clicked", FUNC4(yui_scudsp_destroy), dialog);
    FUNC16(FUNC0(yui_scudsp->hbox), but4, FALSE, FALSE, 2);
  }
  yui_scudsp->paused_handler = FUNC11(yui, "paused", FUNC4(yui_scudsp_update), yui_scudsp);
  yui_scudsp->running_handler = FUNC11(yui, "running", FUNC4(yui_scudsp_clear), yui_scudsp);
  accelGroup = FUNC13 ();
  closureF7 = FUNC8 (FUNC4 (yui_scudsp_step), yui_scudsp, NULL);
  FUNC12( accelGroup, GDK_F7, 0, 0, closureF7 );
  FUNC23( FUNC3( dialog ), accelGroup );
  
  FUNC29(yui_scudsp);
  if ( yui->state & YUI_IS_RUNNING ) FUNC25(yui_scudsp);
  
  FUNC22(FUNC2(yui_scudsp));
  
  return dialog;
}