#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {int screenshot; TYPE_2__* items; TYPE_3__* buttons; int /*<<< orphan*/  cb; TYPE_1__* bg_images; } ;
typedef  TYPE_4__ gui_menu ;
struct TYPE_27__ {int /*<<< orphan*/  state; } ;
struct TYPE_26__ {int /*<<< orphan*/  state; } ;
struct TYPE_25__ {int /*<<< orphan*/  s_device; scalar_t__ bg_overlay; } ;
struct TYPE_24__ {scalar_t__* system; } ;
struct TYPE_22__ {int y; int* shift; int state; } ;
struct TYPE_21__ {int y; void* data; } ;
struct TYPE_20__ {int /*<<< orphan*/  state; } ;
struct TYPE_19__ {int /*<<< orphan*/  state; } ;
struct TYPE_18__ {int /*<<< orphan*/  state; } ;
struct TYPE_17__ {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 int AR_SWITCH_ON ; 
 int AR_SWITCH_TRAINER ; 
 int /*<<< orphan*/  BLACK ; 
 int BUTTON_ACTIVE ; 
 int BUTTON_VISIBLE ; 
 void* Button_sm_blue_png ; 
 void* Button_sm_grey_png ; 
 void* Button_sm_yellow_png ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* DEFAULT_PATH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  IMAGE_VISIBLE ; 
 int /*<<< orphan*/  IO_RESET_HI ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int SYSTEM_MD ; 
 scalar_t__ SYSTEM_MOUSE ; 
 int SYSTEM_SMS ; 
 int /*<<< orphan*/  SYS_POWEROFF ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ Shutdown ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 TYPE_12__* bg_ctrls ; 
 TYPE_11__* bg_list ; 
 TYPE_10__* bg_main ; 
 TYPE_9__* bg_misc ; 
 TYPE_8__* bg_saves ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generic_point_png ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 TYPE_6__ input ; 
 int /*<<< orphan*/ * io_reg ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  mainmenu_cb ; 
 TYPE_4__ menu_main ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 char* rom_filename ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,char*,char*,char*) ; 
 int system_hw ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  w_pointer ; 

void FUNC36(void)
{
  char filename[MAXPATHLEN];
  int status, quit = 0;

  /* Autosave Backup RAM */
  FUNC32(0, config.s_device);

#ifdef HW_RVL
  /* Wiimote shutdown */
  if (Shutdown)
  {
    GUI_FadeOut();
    shutdown();
    SYS_ResetSystem(SYS_POWEROFF, 0, 0);
  }

  /* Wiimote pointer */
  w_pointer = gxTextureOpenPNG(generic_point_png,0);
#endif

  gui_menu *m = &menu_main;

  /* Update main menu */
  if (!m->screenshot)
  {
    if (config.bg_overlay)
    {
      bg_main[1].state  |= IMAGE_VISIBLE;
      bg_misc[1].state  |= IMAGE_VISIBLE;
      bg_ctrls[1].state |= IMAGE_VISIBLE;
      bg_list[1].state  |= IMAGE_VISIBLE;
      bg_saves[2].state |= IMAGE_VISIBLE;
    }
    else
    {
      bg_main[1].state  &= ~IMAGE_VISIBLE;
      bg_misc[1].state  &= ~IMAGE_VISIBLE;
      bg_ctrls[1].state &= ~IMAGE_VISIBLE;
      bg_list[1].state  &= ~IMAGE_VISIBLE;
      bg_saves[2].state &= ~IMAGE_VISIBLE;
    }

    if (system_hw)
    {
      m->screenshot = 128;
      m->bg_images[0].state &= ~IMAGE_VISIBLE;
      m->items[0].y -= 90;
      m->items[1].y -= 90;
      m->items[2].y -= 90;
      m->buttons[0].y -= 90;
      m->buttons[1].y -= 90;
      m->buttons[2].y -= 90;
      m->buttons[0].shift[1] = 3;
      m->buttons[1].shift[1] = 3;
      m->buttons[2].shift[1] = 3;
      m->buttons[3].state |= (BUTTON_VISIBLE | BUTTON_ACTIVE);
      m->buttons[4].state |= (BUTTON_VISIBLE | BUTTON_ACTIVE);
      m->buttons[5].state |= (BUTTON_VISIBLE | BUTTON_ACTIVE);
      m->buttons[7].state |= (BUTTON_VISIBLE | BUTTON_ACTIVE);
      m->buttons[8].state |= (BUTTON_VISIBLE | BUTTON_ACTIVE);
      m->buttons[9].state |= (BUTTON_VISIBLE | BUTTON_ACTIVE);
      if (FUNC15() >= 0)
      {
        menu_main.buttons[6].state |= (BUTTON_VISIBLE | BUTTON_ACTIVE);
        menu_main.items[6].data = Button_sm_grey_png;
        menu_main.cb = mainmenu_cb;
        menu_main.buttons[3].shift[1] = 3;
        menu_main.buttons[7].shift[0] = 1;
        menu_main.buttons[8].shift[2] = 2;
      }
    }
  }

  FUNC4(m);
  FUNC2(m,10,0);

  while (quit == 0)
  {
    switch (FUNC5(m))
    {
      /*** Load Game Menu ***/
      case 0:
      {
        FUNC2(m,30,1);
        FUNC1(m);

        if (FUNC25())
        {
          /* restart emulation */
          FUNC27();

          /* check current controller configuration */
          if (!FUNC24())
          {
            FUNC4(m);
            FUNC2(m,30,0);
            FUNC6("Error","Invalid Controllers Settings");
            break;
          }

          /* exit to game and reinitialize emulation */
          FUNC19((GXColor)BLACK);
          FUNC21();
          quit = 1;
          break;
        }

        FUNC4(m);
        FUNC2(m,30,0);
        break;
      }

      /*** Options Menu */
      case 1:
      {
        FUNC2(m,30,1);
        FUNC1(m);
        FUNC26();
        FUNC4(m);
        FUNC2(m,30,0);
        break;
      }

      /*** Exit Menu ***/
      case 2:
      {
        FUNC17();
        break;
      }

      /*** Save Manager ***/
      case 3:
      {
        FUNC2(m,30,1);
        FUNC1(m);

        if (FUNC28())
        {
          /* check current controller configuration */
          if (!FUNC24())
          {
            FUNC4(m);
            FUNC2(m,30,0);
            FUNC6("Error","Invalid Controllers Settings");
            break;
          }

          /* exit to game */
          quit = 1;
          break;
        }

        FUNC4(m);
        FUNC2(m,30,0);
        break;
      }

      /*** Soft / Hard reset ***/
      case 4:
      {
        /* check current controller configuration */
        if (!FUNC24())
        {
          FUNC6("Error","Invalid Controllers Settings");
          break;
        }

        /* reinitialize emulation */
        FUNC2(m,10,1);
        FUNC1(m);
        FUNC19((GXColor)BLACK);
        FUNC21();

        if (system_hw & SYSTEM_MD)
        {
          /* Soft Reset */
          FUNC18(0);
        }
        else if (system_hw == SYSTEM_SMS)
        {
          /* assert RESET input (Master System model 1 only) */
          io_reg[0x0D] &= ~IO_RESET_HI;
        }
        else
        {
          /* Hard Reset */
          FUNC34();
          FUNC35();

          /* restore SRAM */
          FUNC31(0,config.s_device);
        }

        /* exit to game */
        quit = 1;
        break;
      }

      /*** Cheats menu ***/
      case 5:
      {
        FUNC2(m,30,1);
        FUNC1(m);
        FUNC0();
        FUNC4(m);
        FUNC2(m,30,0);
        break;
      }

      /*** Action Replay switch ***/
      case 6:
      {
        status = (FUNC15() + 1) % (AR_SWITCH_TRAINER + 1);
        FUNC16(status);
        status = FUNC15();
        FUNC1(m);
        if (status == AR_SWITCH_TRAINER) m->items[6].data = Button_sm_blue_png;
        else if (status == AR_SWITCH_ON) m->items[6].data = Button_sm_yellow_png;
        else m->items[6].data = Button_sm_grey_png;
        FUNC4(m);
        break;
      }

      /*** Return to Game ***/
      case 7:
      case -1:
      {
        if (system_hw)
        {
          /* check current controller configuration */
          if (!FUNC24())
          {
            FUNC6("Error","Invalid Controllers Settings");
            break;
          }

          /* exit to game */
          FUNC2(m,10,1);
          FUNC1(m);
          quit = 1;
        }
        break;
      }

      /*** Game Capture ***/
      case 8:
      {
        /* PNG filename */
        FUNC33(filename,"%s/snaps/%s.png", DEFAULT_PATH, rom_filename);

        /* Save file and return */
        FUNC20(filename);
        break;
      }

      /*** ROM information screen ***/
      case 9:
      {
        FUNC29();
        break;
      }
    }
  }

  /*** Remove any still held buttons ***/
  while (FUNC9(0))
  {
    FUNC12();
    FUNC10();
  }
#ifdef HW_RVL
  while (WPAD_ButtonsHeld(0)) 
  {
    VIDEO_WaitVSync();
    WPAD_ScanPads();
  }
  gxTextureClose(&w_pointer);

  /* USB Mouse support */
  if ((input.system[0] == SYSTEM_MOUSE) || (input.system[1] == SYSTEM_MOUSE))
  {
    MOUSE_Init();
  }
  else
  {
    MOUSE_Deinit();
  }
#endif
}