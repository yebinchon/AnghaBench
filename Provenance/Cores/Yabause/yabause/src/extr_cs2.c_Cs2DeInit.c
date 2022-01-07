
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ carttype; TYPE_1__* cdi; } ;
struct TYPE_5__ {int (* DeInit ) () ;} ;


 scalar_t__ CART_JAPMODEM ;
 scalar_t__ CART_NETLINK ;
 TYPE_2__* Cs2Area ;
 int JapModemDeInit () ;
 int NetlinkDeInit () ;
 TYPE_2__* cdip ;
 int free (TYPE_2__*) ;
 int stub1 () ;

void Cs2DeInit(void) {
   if(Cs2Area != ((void*)0)) {
      if (Cs2Area->cdi != ((void*)0)) {
         Cs2Area->cdi->DeInit();
      }

      if(Cs2Area->carttype == CART_NETLINK)
         NetlinkDeInit();
      else if (Cs2Area->carttype == CART_JAPMODEM)
         JapModemDeInit();

      free(Cs2Area);
   }
   Cs2Area = ((void*)0);

   if (cdip)
      free(cdip);
   cdip = ((void*)0);
}
