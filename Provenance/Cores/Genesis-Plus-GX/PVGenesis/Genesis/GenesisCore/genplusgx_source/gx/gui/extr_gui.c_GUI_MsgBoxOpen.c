
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** helpers; } ;
struct TYPE_8__ {int height; scalar_t__ width; } ;
struct TYPE_7__ {scalar_t__ refresh; TYPE_3__* window; TYPE_3__* top; TYPE_5__* parent; void* throbber; } ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef int GXColor ;


 int FONT_writeCenter (char*,int,int,scalar_t__,int,int ) ;
 int Frame_s2_png ;
 int Frame_s2_title_png ;
 int Frame_throbber_png ;
 int GUI_DrawMenu (TYPE_5__*) ;
 int GUI_MsgBoxUpdate (char*,char*) ;
 int LWP_CreateThread (int *,void*,TYPE_2__*,int *,int ,int) ;
 scalar_t__ MsgBox_Thread ;
 scalar_t__ SILENT ;
 scalar_t__ TRUE ;
 scalar_t__ WHITE ;
 int bg_color ;
 int gxClearScreen (int ) ;
 int gxDrawTexture (TYPE_3__*,int,int,scalar_t__,int,int) ;
 int gxSetScreen () ;
 void* gxTextureOpenPNG (int ,int ) ;
 TYPE_2__ message_box ;
 int msgboxthread ;

void GUI_MsgBoxOpen(char *title, char *msg, bool throbber)
{
  if (SILENT)
    return;


  GUI_MsgBoxUpdate(title,msg);


  if (!message_box.refresh)
  {

    message_box.window = gxTextureOpenPNG(Frame_s2_png,0);
    message_box.top = gxTextureOpenPNG(Frame_s2_title_png,0);
    if (throbber)
      message_box.throbber = gxTextureOpenPNG(Frame_throbber_png,0);


    int xwindow = 166;
    int ywindow = 160;
    int ypos = 248;


    if (message_box.parent)
    {
      if (message_box.parent->helpers[0])
        message_box.parent->helpers[0]->data = 0;
      if (message_box.parent->helpers[1])
        message_box.parent->helpers[1]->data = 0;
    }


    int yoffset = ywindow + message_box.window->height;
    while (yoffset > 0)
    {

      if (message_box.parent)
      {
        GUI_DrawMenu(message_box.parent);
      }
      else
      {
        gxClearScreen(bg_color);
      }


      gxDrawTexture(message_box.window,xwindow,ywindow-yoffset,message_box.window->width,message_box.window->height,230);
      gxDrawTexture(message_box.top,xwindow,ywindow-yoffset,message_box.top->width,message_box.top->height,255);


      if (title)
        FONT_writeCenter(title,20,xwindow,xwindow+message_box.window->width,ywindow+(message_box.top->height-20)/2+20-yoffset,(GXColor)WHITE);


      if (msg)
        FONT_writeCenter(msg,18,xwindow,xwindow+message_box.window->width,ypos-yoffset,(GXColor)WHITE);


      gxSetScreen();


      yoffset -= 60;
    }


    message_box.refresh = TRUE;
    LWP_CreateThread (&msgboxthread, (void *)MsgBox_Thread, &message_box, ((void*)0), 0, 70);
  }
}
