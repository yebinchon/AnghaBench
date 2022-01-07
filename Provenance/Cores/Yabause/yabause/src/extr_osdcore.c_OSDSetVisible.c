
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hidden; } ;


 int OSDMSG_COUNT ;
 TYPE_1__* osdmessages ;

void OSDSetVisible(int what, int visible)
{
   if ((what < 0) || (what >= OSDMSG_COUNT)) return;

   visible = visible == 0 ? 0 : 1;
   osdmessages[what].hidden = 1 - visible;
}
