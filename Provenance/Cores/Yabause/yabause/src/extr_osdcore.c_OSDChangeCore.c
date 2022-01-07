
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hidden; } ;


 int * OSD ;
 int OSDDeInit () ;
 int OSDInit (int) ;
 size_t OSDMSG_DEBUG ;
 size_t OSDMSG_FPS ;
 TYPE_1__* osdmessages ;

int OSDChangeCore(int coreid)
{
   int preservefps, fpshidden, dbghidden;

   preservefps = (OSD != ((void*)0));
   fpshidden = osdmessages[OSDMSG_FPS].hidden;
   dbghidden = osdmessages[OSDMSG_DEBUG].hidden;

   OSDDeInit();
   OSDInit(coreid);

   if (preservefps)
   {
      osdmessages[OSDMSG_FPS].hidden = fpshidden;
      osdmessages[OSDMSG_DEBUG].hidden = dbghidden;
   }

   return 0;
}
