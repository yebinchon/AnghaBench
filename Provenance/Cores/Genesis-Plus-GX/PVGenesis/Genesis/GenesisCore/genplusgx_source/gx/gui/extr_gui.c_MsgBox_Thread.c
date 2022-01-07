
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* title; char* msg; double progress; TYPE_3__* buttonA; TYPE_3__* window; TYPE_2__* throbber; TYPE_3__* top; scalar_t__ parent; scalar_t__ refresh; } ;
typedef TYPE_1__ gui_message ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {int width; int height; } ;
typedef int GXColor ;


 int FONT_writeCenter (char*,int,int,int,int,int ) ;
 int GUI_DrawMenu (scalar_t__) ;
 scalar_t__ WHITE ;
 int bg_color ;
 int gxClearScreen (int ) ;
 int gxDrawTexture (TYPE_3__*,int,int,int,int,int) ;
 int gxDrawTextureRotate (TYPE_2__*,int,int,int,int,double,int) ;
 int gxSetScreen () ;
 int usleep (int) ;

__attribute__((used)) static void *MsgBox_Thread(gui_message *message_box)
{
  while (message_box->refresh)
  {

    if (message_box->parent)
    {
      GUI_DrawMenu(message_box->parent);
    }
    else
    {
      gxClearScreen(bg_color);
    }


    gxDrawTexture(message_box->window,166,160,message_box->window->width,message_box->window->height,230);
    gxDrawTexture(message_box->top,166,160,message_box->top->width,message_box->top->height,255);


    if (message_box->title)
      FONT_writeCenter(message_box->title,20,166,166+message_box->window->width,160+(message_box->top->height-20)/2+20,(GXColor)WHITE);


    if (message_box->msg)
      FONT_writeCenter(message_box->msg,18,166,166+message_box->window->width,248,(GXColor)WHITE);


    if (message_box->throbber)
      gxDrawTextureRotate(message_box->throbber,166+(message_box->window->width-message_box->throbber->width)/2,160+message_box->window->height-message_box->throbber->height-20,message_box->throbber->width,message_box->throbber->height,(message_box->progress * 360.0) / 100.0, 255);


    if (message_box->buttonA)
    {
      FONT_writeCenter("Press    to continue.",18,166,166+message_box->window->width,248+22,(GXColor)WHITE);
      gxDrawTexture(message_box->buttonA, 166+116, 248+4+(18-message_box->buttonA->height)/2,message_box->buttonA->width, message_box->buttonA->height,255);
    }


    gxSetScreen();


    message_box->progress++;
    if (message_box->progress > 100)
      message_box->progress = 0;
    usleep(10);
  }

  return 0;
}
