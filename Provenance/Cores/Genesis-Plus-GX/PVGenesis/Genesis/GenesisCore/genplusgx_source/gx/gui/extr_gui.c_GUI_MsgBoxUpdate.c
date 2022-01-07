
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; int title; } ;


 TYPE_1__ message_box ;
 int strncpy (int ,char*,int) ;

void GUI_MsgBoxUpdate(char *title, char *msg)
{
  if (title)
    strncpy(message_box.title,title,64);
  if (msg)
    strncpy(message_box.msg,msg,64);
}
