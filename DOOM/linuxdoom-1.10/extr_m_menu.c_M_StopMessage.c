
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int menuactive ;
 int messageLastMenuActive ;
 scalar_t__ messageToPrint ;

void M_StopMessage(void)
{
    menuactive = messageLastMenuActive;
    messageToPrint = 0;
}
