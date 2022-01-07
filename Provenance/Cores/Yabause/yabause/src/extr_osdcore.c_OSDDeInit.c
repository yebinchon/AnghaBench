
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* DeInit ) () ;} ;


 TYPE_1__* OSD ;
 int stub1 () ;

void OSDDeInit() {
   if (OSD)
      OSD->DeInit();
   OSD = ((void*)0);
}
