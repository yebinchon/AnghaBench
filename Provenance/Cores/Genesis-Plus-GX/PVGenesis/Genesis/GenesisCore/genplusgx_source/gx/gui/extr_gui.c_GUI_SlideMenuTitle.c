
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* title; int selected; int max_buttons; TYPE_3__** arrows; TYPE_3__* buttons; } ;
typedef TYPE_2__ gui_menu ;
struct TYPE_11__ {int state; int x; int w; int y; int h; } ;
typedef TYPE_3__ gui_butn ;
struct TYPE_9__ {int x; int y; int angle; scalar_t__ valid; } ;
struct TYPE_13__ {TYPE_1__ ir; } ;
struct TYPE_12__ {int width; int height; } ;


 int BUTTON_ACTIVE ;
 int BUTTON_VISIBLE ;
 int GUI_DrawMenu (TYPE_2__*) ;
 int gxDrawTextureRotate (TYPE_4__*,int,int,int,int,int ,int) ;
 int gxSetScreen () ;
 TYPE_5__ m_input ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int usleep (int) ;
 TYPE_4__* w_pointer ;

void GUI_SlideMenuTitle(gui_menu *m, int title_offset)
{





  char title[64];
  strcpy(title,m->title);

  while (title_offset > 0)
  {

    strcpy(m->title,title+title_offset);
    m->title[strlen(title)-title_offset-1] = 0;


    GUI_DrawMenu(m);
    gxSetScreen();
    usleep(6000);
    title_offset--;
  }
  strcpy(m->title,title);
}
