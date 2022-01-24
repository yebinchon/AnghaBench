#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  carttype; } ;
typedef  int /*<<< orphan*/  JapModem ;

/* Variables and functions */
 int /*<<< orphan*/  CART_NONE ; 
 TYPE_1__* Cs2Area ; 
 int /*<<< orphan*/ * JapModemArea ; 
 int FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  YAB_ERR_CANNOTINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int FUNC3(const char *ip, const char *port)
{  
   if ((JapModemArea = FUNC2(sizeof(JapModem))) == NULL)
   {
      Cs2Area->carttype = CART_NONE;
      FUNC1(YAB_ERR_CANNOTINIT, (void *)"Japanese Modem");
      return 0;
   }

   return FUNC0(ip, port);
}