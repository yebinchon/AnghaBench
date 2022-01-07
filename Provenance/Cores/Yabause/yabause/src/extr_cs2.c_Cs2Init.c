
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ip_struct ;
struct TYPE_4__ {int carttype; char const* mpegpath; int * cdi; } ;
typedef TYPE_1__ Cs2 ;


 int CART_JAPMODEM ;
 int CART_NETLINK ;
 TYPE_1__* Cs2Area ;
 int Cs2ChangeCDCore (int,char const*) ;
 int Cs2Reset () ;
 int JapModemInit (char const*,char const*) ;
 int NetlinkInit (char const*,char const*) ;
 scalar_t__ calloc (int,int) ;
 int * cdip ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

int Cs2Init(int carttype, int coreid, const char *cdpath, const char *mpegpath, const char *modemip, const char *modemport) {
   int ret;

   if ((Cs2Area = (Cs2 *) malloc(sizeof(Cs2))) == ((void*)0))
      return -1;
   memset(Cs2Area, 0, sizeof(*Cs2Area));

   Cs2Area->carttype = carttype;
   Cs2Area->mpegpath = mpegpath;
   Cs2Area->cdi=((void*)0);

   if ((ret = Cs2ChangeCDCore(coreid, cdpath)) != 0)
      return ret;

   Cs2Reset();


   if(Cs2Area->carttype == CART_NETLINK)
   {
      if ((ret = NetlinkInit(modemip, modemport)) != 0)
         return ret;
   }
   else if (Cs2Area->carttype == CART_JAPMODEM)
   {
      if ((ret = JapModemInit(modemip, modemport)) != 0)
         return ret;
   }

   if ((cdip = (ip_struct *) calloc(sizeof(ip_struct), 1)) == ((void*)0))
      return -1;

   return 0;
}
