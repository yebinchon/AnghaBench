#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ carttype; TYPE_1__* cdi; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* DeInit ) () ;} ;

/* Variables and functions */
 scalar_t__ CART_JAPMODEM ; 
 scalar_t__ CART_NETLINK ; 
 TYPE_2__* Cs2Area ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* cdip ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void) {
   if(Cs2Area != NULL) {
      if (Cs2Area->cdi != NULL) {
         Cs2Area->cdi->DeInit();
      }

      if(Cs2Area->carttype == CART_NETLINK)
         FUNC1();
      else if (Cs2Area->carttype == CART_JAPMODEM)
         FUNC0();

      FUNC2(Cs2Area);
   }
   Cs2Area = NULL;

   if (cdip)
      FUNC2(cdip);
   cdip = NULL;
}