#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  action_group; } ;
typedef  TYPE_1__ YuiWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkAction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ToggleFPS ; 
 int /*<<< orphan*/  YuiLoadState ; 
 int /*<<< orphan*/  YuiSaveState ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  openAboutDialog ; 
 int /*<<< orphan*/  yui_conf ; 
 int /*<<< orphan*/  yui_m68k_new ; 
 int /*<<< orphan*/  yui_mem_new ; 
 int /*<<< orphan*/  yui_msh_new ; 
 int /*<<< orphan*/  yui_screenshot_new ; 
 int /*<<< orphan*/  yui_scsp_new ; 
 int /*<<< orphan*/  yui_scudsp_new ; 
 int /*<<< orphan*/  yui_ssh_new ; 
 int /*<<< orphan*/  yui_transfer_new ; 
 int /*<<< orphan*/  yui_vdp1_new ; 
 int /*<<< orphan*/  yui_vdp2_new ; 
 int /*<<< orphan*/  yui_window_show_log ; 

GtkWidget* FUNC17(YuiWindow * window1) {
  GtkWidget *menubar1;
  GtkWidget *menuitem1;
  GtkWidget *menuitem1_menu;
  GtkWidget *new1;
  GtkWidget *view1;
  GtkWidget *view1_menu;
  GtkWidget *fps1;
  GtkWidget *frameLimiter;
  GtkWidget *layer1;
  GtkWidget *layer1_menu;
  GtkWidget *log;
  GtkWidget *menuitem3;
  GtkWidget *menuitem3_menu;
  GtkWidget *msh;
  GtkWidget *ssh;
  GtkWidget *vdp2;
  GtkWidget *vdp1;
  GtkWidget *m68k;
  GtkWidget *scudsp;
  GtkWidget *scsp;
  GtkWidget *menuitem4;
  GtkWidget *menuitem4_menu;
  GtkWidget *about1;
  GtkWidget *transfer;
  GtkWidget *memory;
  GtkWidget *screenshot;

  menubar1 = FUNC12 ();

  menuitem1 = FUNC13 ("_Yabause");
  FUNC10 (FUNC0 (menubar1), menuitem1);

  menuitem1_menu = FUNC15 ();
  FUNC14 (FUNC1 (menuitem1), menuitem1_menu);

  new1 = FUNC11("gtk-preferences", NULL);
  FUNC4(new1, "activate", yui_conf, 0);
  FUNC10 (FUNC0 (menuitem1_menu), new1);

  FUNC10(FUNC0(menuitem1_menu), FUNC7(FUNC8(window1->action_group, "run")));
  FUNC10(FUNC0(menuitem1_menu), FUNC7(FUNC8(window1->action_group, "pause")));
  FUNC10(FUNC0(menuitem1_menu), FUNC7(FUNC8(window1->action_group, "reset")));

  transfer = FUNC13 (FUNC3("Transfer"));
  FUNC10 (FUNC0 (menuitem1_menu), transfer);
  FUNC5(transfer, "activate", FUNC2(yui_transfer_new), window1);

  screenshot = FUNC13 (FUNC3("Screenshot"));
  FUNC10 (FUNC0 (menuitem1_menu), screenshot);
  FUNC5(screenshot, "activate", FUNC2(yui_screenshot_new), window1);

  frameLimiter = FUNC9 (FUNC3("Frame Skip/Limiter"));
  {
    GtkAction * action = FUNC8(window1->action_group, "frameskip");
    FUNC6(action, frameLimiter);
  }
  FUNC10 (FUNC0 (menuitem1_menu), frameLimiter);

  {
    GtkWidget * savestate_menu;
    GtkWidget * savestate;
    GtkWidget * savestate_save;
    GtkWidget * savestate_load;

    savestate = FUNC13(FUNC3("Save State"));
    FUNC10(FUNC0(menuitem1_menu), savestate);

    savestate_menu = FUNC15();
    FUNC14(FUNC1(savestate), savestate_menu);

    savestate_save = FUNC13(FUNC3("Save"));
    FUNC10(FUNC0(savestate_menu), savestate_save);
    FUNC5(savestate_save, "activate", FUNC2(YuiSaveState), NULL);

    savestate_load = FUNC13(FUNC3("Load"));
    FUNC10(FUNC0(savestate_menu), savestate_load);
    FUNC5(savestate_load, "activate", FUNC2(YuiLoadState), NULL);
  }

  FUNC10 (FUNC0 (menuitem1_menu), FUNC16 ());

  FUNC10(FUNC0(menuitem1_menu), FUNC7(FUNC8(window1->action_group, "quit")));

  view1 = FUNC13 (FUNC3("_View"));
  FUNC10 (FUNC0 (menubar1), view1);

  view1_menu = FUNC15 ();
  FUNC14 (FUNC1 (view1), view1_menu);

  fps1 = FUNC9 (FUNC3("FPS"));
  FUNC4(fps1, "activate", FUNC2(ToggleFPS), NULL);
  FUNC10 (FUNC0 (view1_menu), fps1);

  layer1 = FUNC13 (FUNC3("Layer"));
  FUNC10 (FUNC0 (view1_menu), layer1);

  layer1_menu = FUNC15 ();
  FUNC14 (FUNC1 (layer1), layer1_menu);

  FUNC10(FUNC0(layer1_menu), FUNC7(FUNC8(window1->action_group, "toggle_vdp1")));
  FUNC10(FUNC0(layer1_menu), FUNC7(FUNC8(window1->action_group, "toggle_nbg0")));
  FUNC10(FUNC0(layer1_menu), FUNC7(FUNC8(window1->action_group, "toggle_nbg1")));
  FUNC10(FUNC0(layer1_menu), FUNC7(FUNC8(window1->action_group, "toggle_nbg2")));
  FUNC10(FUNC0(layer1_menu), FUNC7(FUNC8(window1->action_group, "toggle_nbg3")));
  FUNC10(FUNC0(layer1_menu), FUNC7(FUNC8(window1->action_group, "toggle_rbg0")));

  FUNC10(FUNC0(view1_menu), FUNC7(FUNC8(window1->action_group, "fullscreen")));

  log = FUNC13 (FUNC3("Log"));
  FUNC5(log, "activate", FUNC2(yui_window_show_log), window1);
  FUNC10(FUNC0(view1_menu), log);

  menuitem3 = FUNC13 (FUNC3("_Debug"));
  FUNC10 (FUNC0 (menubar1), menuitem3);

  menuitem3_menu = FUNC15 ();
  FUNC14 (FUNC1 (menuitem3), menuitem3_menu);

  msh = FUNC13 ("MSH2");
  FUNC10 (FUNC0 (menuitem3_menu), msh);
  FUNC5(msh, "activate", FUNC2(yui_msh_new), window1);

  ssh = FUNC13 ("SSH2");
  FUNC10 (FUNC0 (menuitem3_menu), ssh);
  FUNC5(ssh, "activate", FUNC2(yui_ssh_new), window1);

  vdp2 = FUNC13 ("Vdp1");
  FUNC10 (FUNC0 (menuitem3_menu), vdp2);
  FUNC5(vdp2, "activate", FUNC2(yui_vdp1_new), window1);

  vdp1 = FUNC13 ("Vdp2");
  FUNC10 (FUNC0 (menuitem3_menu), vdp1);
  FUNC5(vdp1, "activate", FUNC2(yui_vdp2_new), window1);

  m68k = FUNC13 ("M68K");
  FUNC10 (FUNC0 (menuitem3_menu), m68k);
  FUNC5(m68k, "activate", FUNC2(yui_m68k_new), window1);

  scudsp = FUNC13 ("SCU-DSP");
  FUNC10 (FUNC0 (menuitem3_menu), scudsp);
  FUNC5(scudsp, "activate", FUNC2(yui_scudsp_new), window1);

  scsp = FUNC13 ("SCSP");
  FUNC10 (FUNC0 (menuitem3_menu), scsp);
  FUNC5(scsp, "activate", FUNC2(yui_scsp_new), window1);

  FUNC10 (FUNC0 (menuitem3_menu), FUNC16 ());

  memory = FUNC13 (FUNC3("Memory dump"));
  FUNC10 (FUNC0 (menuitem3_menu), memory);
  FUNC5(memory, "activate", FUNC2(yui_mem_new), window1);

  menuitem4 = FUNC13 (FUNC3("_Help"));
  FUNC10 (FUNC0 (menubar1), menuitem4);

  menuitem4_menu = FUNC15 ();
  FUNC14 (FUNC1 (menuitem4), menuitem4_menu);

  about1 = FUNC11 ("gtk-about", NULL);
  FUNC10 (FUNC0 (menuitem4_menu), about1);
  FUNC4(about1, "activate", FUNC2(openAboutDialog), window1);

  return menubar1;
}