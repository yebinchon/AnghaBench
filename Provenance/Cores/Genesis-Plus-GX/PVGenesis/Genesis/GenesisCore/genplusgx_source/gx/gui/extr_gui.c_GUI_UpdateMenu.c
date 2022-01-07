
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_14__ {int selected; int max_items; int max_buttons; int offset; TYPE_5__* buttons; TYPE_1__** helpers; TYPE_4__* items; TYPE_5__** arrows; } ;
typedef TYPE_3__ gui_menu ;
struct TYPE_15__ {char* comment; } ;
typedef TYPE_4__ gui_item ;
struct TYPE_16__ {int state; int x; int w; int y; int h; scalar_t__* shift; } ;
typedef TYPE_5__ gui_butn ;
struct TYPE_19__ {scalar_t__ sfx_volume; } ;
struct TYPE_13__ {int x; int y; int angle; scalar_t__ valid; } ;
struct TYPE_18__ {int keys; TYPE_2__ ir; } ;
struct TYPE_17__ {int width; int height; } ;
struct TYPE_12__ {int comment; } ;


 int ASND_GetFirstUnusedVoice () ;
 int ASND_SetVoice (int ,int ,int,int ,int *,int ,int,int,int *) ;
 int BUTTON_ACTIVE ;
 int BUTTON_OVER_SFX ;
 int BUTTON_SELECT_SFX ;
 int BUTTON_VISIBLE ;
 int GUI_DeleteMenu (TYPE_3__*) ;
 int GUI_FadeOut () ;
 int PAD_BUTTON_A ;
 int PAD_BUTTON_B ;
 int PAD_BUTTON_DOWN ;
 int PAD_BUTTON_LEFT ;
 int PAD_BUTTON_RIGHT ;
 int PAD_BUTTON_UP ;
 int PAD_TRIGGER_Z ;
 int SYS_POWEROFF ;
 int SYS_ResetSystem (int ,int ,int ) ;
 scalar_t__ Shutdown ;
 int VOICE_MONO_16BIT ;
 scalar_t__ button_over_pcm ;
 int button_over_pcm_size ;
 scalar_t__ button_select_pcm ;
 int button_select_pcm_size ;
 TYPE_9__ config ;
 int gxDrawTextureRotate (TYPE_6__*,int,int,int,int,int ,int) ;
 int gxSetScreen () ;
 TYPE_7__ m_input ;
 int shutdown () ;
 int strcpy (int ,char*) ;
 TYPE_6__* w_pointer ;

int GUI_UpdateMenu(gui_menu *menu)
{
  u16 p;
  int ret = 0;
  int selected = menu->selected;
  int max_items = menu->max_items;
  int max_buttons = menu->max_buttons;
  gui_butn *button;
  gxSetScreen();


  p = m_input.keys;

  if (selected < max_buttons)
  {
    button = &menu->buttons[selected];
    if (p & PAD_BUTTON_UP)
    {
      selected -= button->shift[0];
      if (selected < 0)
      {
        selected = 0;
        if (menu->offset)
          menu->offset --;
      }
    }
    else if (p & PAD_BUTTON_DOWN)
    {
      selected += button->shift[1];
      if (selected >= max_buttons)
      {
        selected = max_buttons - 1;
        if ((menu->offset + selected) < (max_items - 1))
          menu->offset ++;
      }
    }
    else if (p & PAD_BUTTON_LEFT)
    {
      selected -= button->shift[2];
      if (selected < 0)
      {
        selected = 0;
        if (menu->offset)
          menu->offset --;
      }
    }
    else if (p & PAD_BUTTON_RIGHT)
    {
      selected += button->shift[3];
      if (selected >= max_buttons)
      {
        selected = max_buttons - 1;
        if ((menu->offset + selected) < (max_items - 1))
          menu->offset ++;
      }
    }
  }

  if (p & PAD_BUTTON_A)
  {
    if (selected < max_buttons)
      ret = 1;
    else if (selected == max_buttons)
      menu->offset --;
    else if (selected == (max_buttons+1))
      menu->offset ++;
  }
  else if ((p & PAD_BUTTON_B) || (p & PAD_TRIGGER_Z))
  {

    ret = -1;
  }


  if (menu->selected != selected)
  {
    if (selected < max_buttons)
    {

      button = &menu->buttons[selected];
      if (button->state & BUTTON_OVER_SFX)
      {
        ASND_SetVoice(ASND_GetFirstUnusedVoice(),VOICE_MONO_16BIT,22050,0,(u8 *)button_over_pcm,button_over_pcm_size,
                      ((int)config.sfx_volume * 255) / 100,((int)config.sfx_volume * 255) / 100,((void*)0));
      }
    }
    else if (selected < (max_buttons + 2))
    {

      button = menu->arrows[selected-max_buttons];
      if (button->state & BUTTON_OVER_SFX)
      {
        ASND_SetVoice(ASND_GetFirstUnusedVoice(),VOICE_MONO_16BIT,22050,0,(u8 *)button_over_pcm,button_over_pcm_size,
                      ((int)config.sfx_volume * 255) / 100,((int)config.sfx_volume * 255) / 100,((void*)0));
      }
    }


    menu->selected = selected;
  }


  if (menu->helpers[1])
  {
    if ((menu->offset + selected) < max_items)
    {
      gui_item *item = &menu->items[menu->offset + selected];
      strcpy(menu->helpers[1]->comment,item->comment);
    }
    else
    {
      strcpy(menu->helpers[1]->comment,"");
    }
  }

  if (ret > 0)
  {
    if (selected < max_buttons)
    {

      button = &menu->buttons[selected];
      if (button->state & BUTTON_SELECT_SFX)
      {
        ASND_SetVoice(ASND_GetFirstUnusedVoice(),VOICE_MONO_16BIT,22050,0,(u8 *)button_select_pcm,button_select_pcm_size,
                      ((int)config.sfx_volume * 255) / 100,((int)config.sfx_volume * 255) / 100,((void*)0));
      }
    }
  }

  return ret;
}
