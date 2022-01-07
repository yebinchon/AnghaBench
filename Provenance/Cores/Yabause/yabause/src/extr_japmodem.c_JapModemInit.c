
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int carttype; } ;
typedef int JapModem ;


 int CART_NONE ;
 TYPE_1__* Cs2Area ;
 int * JapModemArea ;
 int NetlinkInit (char const*,char const*) ;
 int YAB_ERR_CANNOTINIT ;
 int YabSetError (int ,void*) ;
 int * malloc (int) ;

int JapModemInit(const char *ip, const char *port)
{
   if ((JapModemArea = malloc(sizeof(JapModem))) == ((void*)0))
   {
      Cs2Area->carttype = CART_NONE;
      YabSetError(YAB_ERR_CANNOTINIT, (void *)"Japanese Modem");
      return 0;
   }

   return NetlinkInit(ip, port);
}
