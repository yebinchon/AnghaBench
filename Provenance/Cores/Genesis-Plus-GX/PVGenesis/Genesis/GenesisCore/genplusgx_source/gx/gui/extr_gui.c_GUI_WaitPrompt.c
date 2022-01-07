
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int keys; } ;
struct TYPE_3__ {int buttonA; int throbber; } ;


 int GUI_MsgBoxClose () ;
 int GUI_MsgBoxOpen (char*,char*,int ) ;
 int Key_A_png ;
 int PAD_BUTTON_A ;
 scalar_t__ SILENT ;
 int VIDEO_WaitVSync () ;
 int gxTextureClose (int *) ;
 int gxTextureOpenPNG (int ,int ) ;
 TYPE_2__ m_input ;
 TYPE_1__ message_box ;

void GUI_WaitPrompt(char *title, char *msg)
{
  if (SILENT)
    return;


  gxTextureClose(&message_box.throbber);


  GUI_MsgBoxOpen(title, msg, 0);


  message_box.buttonA = gxTextureOpenPNG(Key_A_png,0);


  while (m_input.keys & PAD_BUTTON_A)
    VIDEO_WaitVSync();
  while (!(m_input.keys & PAD_BUTTON_A))
    VIDEO_WaitVSync();


  GUI_MsgBoxClose();
}
