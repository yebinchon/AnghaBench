
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* DeInit ) () ;} ;


 TYPE_1__* VIDCore ;
 int stub1 () ;

void VideoDeInit(void) {
   if (VIDCore)
      VIDCore->DeInit();
   VIDCore = ((void*)0);
}
