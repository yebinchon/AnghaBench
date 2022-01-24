#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ip_struct ;
struct TYPE_4__ {int carttype; char const* mpegpath; int /*<<< orphan*/ * cdi; } ;
typedef  TYPE_1__ Cs2 ;

/* Variables and functions */
 int CART_JAPMODEM ; 
 int CART_NETLINK ; 
 TYPE_1__* Cs2Area ; 
 int FUNC0 (int,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/ * cdip ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC7(int carttype, int coreid, const char *cdpath, const char *mpegpath, const char *modemip, const char *modemport) {
   int ret;

   if ((Cs2Area = (Cs2 *) FUNC5(sizeof(Cs2))) == NULL)
      return -1;
   FUNC6(Cs2Area, 0, sizeof(*Cs2Area));

   Cs2Area->carttype = carttype;
   Cs2Area->mpegpath = mpegpath;
   Cs2Area->cdi=NULL;

   if ((ret = FUNC0(coreid, cdpath)) != 0)
      return ret;

   FUNC1();

   // If Modem is connected, set the registers
   if(Cs2Area->carttype == CART_NETLINK)
   {
      if ((ret = FUNC3(modemip, modemport)) != 0)
         return ret;
   }
   else if (Cs2Area->carttype == CART_JAPMODEM)
   {
      if ((ret = FUNC2(modemip, modemport)) != 0)
         return ret;
   }

   if ((cdip = (ip_struct *) FUNC4(sizeof(ip_struct), 1)) == NULL)
      return -1;

   return 0;
}