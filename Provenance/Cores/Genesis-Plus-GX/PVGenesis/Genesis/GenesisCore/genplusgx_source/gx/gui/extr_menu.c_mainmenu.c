
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_23__ {int screenshot; TYPE_2__* items; TYPE_3__* buttons; int cb; TYPE_1__* bg_images; } ;
typedef TYPE_4__ gui_menu ;
struct TYPE_27__ {int state; } ;
struct TYPE_26__ {int state; } ;
struct TYPE_25__ {int s_device; scalar_t__ bg_overlay; } ;
struct TYPE_24__ {scalar_t__* system; } ;
struct TYPE_22__ {int y; int* shift; int state; } ;
struct TYPE_21__ {int y; void* data; } ;
struct TYPE_20__ {int state; } ;
struct TYPE_19__ {int state; } ;
struct TYPE_18__ {int state; } ;
struct TYPE_17__ {int state; } ;
typedef int GXColor ;


 int AR_SWITCH_ON ;
 int AR_SWITCH_TRAINER ;
 int BLACK ;
 int BUTTON_ACTIVE ;
 int BUTTON_VISIBLE ;
 void* Button_sm_blue_png ;
 void* Button_sm_grey_png ;
 void* Button_sm_yellow_png ;
 int CheatMenu () ;
 char* DEFAULT_PATH ;
 int GUI_DeleteMenu (TYPE_4__*) ;
 int GUI_DrawMenuFX (TYPE_4__*,int,int) ;
 int GUI_FadeOut () ;
 int GUI_InitMenu (TYPE_4__*) ;
 int GUI_RunMenu (TYPE_4__*) ;
 int GUI_WaitPrompt (char*,char*) ;
 int IMAGE_VISIBLE ;
 int IO_RESET_HI ;
 int MAXPATHLEN ;
 int MOUSE_Deinit () ;
 int MOUSE_Init () ;
 scalar_t__ PAD_ButtonsHeld (int ) ;
 int PAD_ScanPads () ;
 int SYSTEM_MD ;
 scalar_t__ SYSTEM_MOUSE ;
 int SYSTEM_SMS ;
 int SYS_POWEROFF ;
 int SYS_ResetSystem (int ,int ,int ) ;
 scalar_t__ Shutdown ;
 int VIDEO_WaitVSync () ;
 scalar_t__ WPAD_ButtonsHeld (int ) ;
 int WPAD_ScanPads () ;
 scalar_t__ areplay_get_status () ;
 int areplay_set_status (int) ;
 TYPE_12__* bg_ctrls ;
 TYPE_11__* bg_list ;
 TYPE_10__* bg_main ;
 TYPE_9__* bg_misc ;
 TYPE_8__* bg_saves ;
 TYPE_7__ config ;
 int exitmenu () ;
 int gen_reset (int ) ;
 int generic_point_png ;
 int gxClearScreen (int ) ;
 int gxSaveScreenshot (char*) ;
 int gxSetScreen () ;
 int gxTextureClose (int *) ;
 int gxTextureOpenPNG (int ,int ) ;
 int gx_input_FindDevices () ;
 TYPE_6__ input ;
 int * io_reg ;
 int loadgamemenu () ;
 int mainmenu_cb ;
 TYPE_4__ menu_main ;
 int optionmenu () ;
 int reloadrom () ;
 char* rom_filename ;
 int savemenu () ;
 int showrominfo () ;
 int shutdown () ;
 int slot_autoload (int ,int ) ;
 int slot_autosave (int ,int ) ;
 int sprintf (char*,char*,char*,char*) ;
 int system_hw ;
 int system_init () ;
 int system_reset () ;
 int w_pointer ;

void mainmenu(void)
{
  char filename[MAXPATHLEN];
  int status, quit = 0;


  slot_autosave(0, config.s_device);
  gui_menu *m = &menu_main;


  if (!m->screenshot)
  {
    if (config.bg_overlay)
    {
      bg_main[1].state |= IMAGE_VISIBLE;
      bg_misc[1].state |= IMAGE_VISIBLE;
      bg_ctrls[1].state |= IMAGE_VISIBLE;
      bg_list[1].state |= IMAGE_VISIBLE;
      bg_saves[2].state |= IMAGE_VISIBLE;
    }
    else
    {
      bg_main[1].state &= ~IMAGE_VISIBLE;
      bg_misc[1].state &= ~IMAGE_VISIBLE;
      bg_ctrls[1].state &= ~IMAGE_VISIBLE;
      bg_list[1].state &= ~IMAGE_VISIBLE;
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
      if (areplay_get_status() >= 0)
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

  GUI_InitMenu(m);
  GUI_DrawMenuFX(m,10,0);

  while (quit == 0)
  {
    switch (GUI_RunMenu(m))
    {

      case 0:
      {
        GUI_DrawMenuFX(m,30,1);
        GUI_DeleteMenu(m);

        if (loadgamemenu())
        {

          reloadrom();


          if (!gx_input_FindDevices())
          {
            GUI_InitMenu(m);
            GUI_DrawMenuFX(m,30,0);
            GUI_WaitPrompt("Error","Invalid Controllers Settings");
            break;
          }


          gxClearScreen((GXColor)BLACK);
          gxSetScreen();
          quit = 1;
          break;
        }

        GUI_InitMenu(m);
        GUI_DrawMenuFX(m,30,0);
        break;
      }


      case 1:
      {
        GUI_DrawMenuFX(m,30,1);
        GUI_DeleteMenu(m);
        optionmenu();
        GUI_InitMenu(m);
        GUI_DrawMenuFX(m,30,0);
        break;
      }


      case 2:
      {
        exitmenu();
        break;
      }


      case 3:
      {
        GUI_DrawMenuFX(m,30,1);
        GUI_DeleteMenu(m);

        if (savemenu())
        {

          if (!gx_input_FindDevices())
          {
            GUI_InitMenu(m);
            GUI_DrawMenuFX(m,30,0);
            GUI_WaitPrompt("Error","Invalid Controllers Settings");
            break;
          }


          quit = 1;
          break;
        }

        GUI_InitMenu(m);
        GUI_DrawMenuFX(m,30,0);
        break;
      }


      case 4:
      {

        if (!gx_input_FindDevices())
        {
          GUI_WaitPrompt("Error","Invalid Controllers Settings");
          break;
        }


        GUI_DrawMenuFX(m,10,1);
        GUI_DeleteMenu(m);
        gxClearScreen((GXColor)BLACK);
        gxSetScreen();

        if (system_hw & SYSTEM_MD)
        {

          gen_reset(0);
        }
        else if (system_hw == SYSTEM_SMS)
        {

          io_reg[0x0D] &= ~IO_RESET_HI;
        }
        else
        {

          system_init();
          system_reset();


          slot_autoload(0,config.s_device);
        }


        quit = 1;
        break;
      }


      case 5:
      {
        GUI_DrawMenuFX(m,30,1);
        GUI_DeleteMenu(m);
        CheatMenu();
        GUI_InitMenu(m);
        GUI_DrawMenuFX(m,30,0);
        break;
      }


      case 6:
      {
        status = (areplay_get_status() + 1) % (AR_SWITCH_TRAINER + 1);
        areplay_set_status(status);
        status = areplay_get_status();
        GUI_DeleteMenu(m);
        if (status == AR_SWITCH_TRAINER) m->items[6].data = Button_sm_blue_png;
        else if (status == AR_SWITCH_ON) m->items[6].data = Button_sm_yellow_png;
        else m->items[6].data = Button_sm_grey_png;
        GUI_InitMenu(m);
        break;
      }


      case 7:
      case -1:
      {
        if (system_hw)
        {

          if (!gx_input_FindDevices())
          {
            GUI_WaitPrompt("Error","Invalid Controllers Settings");
            break;
          }


          GUI_DrawMenuFX(m,10,1);
          GUI_DeleteMenu(m);
          quit = 1;
        }
        break;
      }


      case 8:
      {

        sprintf(filename,"%s/snaps/%s.png", DEFAULT_PATH, rom_filename);


        gxSaveScreenshot(filename);
        break;
      }


      case 9:
      {
        showrominfo();
        break;
      }
    }
  }


  while (PAD_ButtonsHeld(0))
  {
    VIDEO_WaitVSync();
    PAD_ScanPads();
  }
}
