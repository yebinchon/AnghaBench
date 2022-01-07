
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Resize ) (int,int,int) ;scalar_t__ (* IsFullscreen ) () ;} ;


 TYPE_1__* VIDCore ;
 scalar_t__ stub1 () ;
 int stub2 (int,int,int) ;
 int stub3 (int,int,int) ;

void ToggleFullScreen(void)
{
   if (VIDCore->IsFullscreen())
   {
      VIDCore->Resize(320, 224, 0);
   }
   else
   {
      VIDCore->Resize(640, 480, 1);
   }
}
