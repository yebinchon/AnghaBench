
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean ;


 int menuactive ;
 int messageLastMenuActive ;
 int messageNeedsInput ;
 void* messageRoutine ;
 char* messageString ;
 int messageToPrint ;

void
M_StartMessage
( char* string,
  void* routine,
  boolean input )
{
    messageLastMenuActive = menuactive;
    messageToPrint = 1;
    messageString = string;
    messageRoutine = routine;
    messageNeedsInput = input;
    menuactive = 1;
    return;
}
