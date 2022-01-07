
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ offset; scalar_t__ max_buttons; scalar_t__ max_items; int selected; TYPE_1__** arrows; } ;
typedef TYPE_2__ gui_menu ;
struct TYPE_6__ {int state; } ;


 int BUTTON_VISIBLE ;
 int GUI_DrawMenu (TYPE_2__*) ;
 int GUI_UpdateMenu (TYPE_2__*) ;

int GUI_RunMenu(gui_menu *menu)
{
  int update = 0;


  while (!update)
  {
    GUI_DrawMenu(menu);
    update = GUI_UpdateMenu(menu);


    if (menu->arrows[0])
    {
      if (menu->offset > 0)
        menu->arrows[0]->state |= BUTTON_VISIBLE;
      else
        menu->arrows[0]->state &= ~BUTTON_VISIBLE;
    }

    if (menu->arrows[1])
    {
      if ((menu->offset + menu->max_buttons) < menu->max_items)
        menu->arrows[1]->state |= BUTTON_VISIBLE;
      else
        menu->arrows[1]->state &= ~BUTTON_VISIBLE;
    }
  }

  if (update == 2)
    return (-2-menu->offset-menu->selected);
  else if (update == 1)
    return (menu->offset + menu->selected);
  else
    return -1;
 }
