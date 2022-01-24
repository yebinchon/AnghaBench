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
struct TYPE_4__ {size_t res_ptr; int /*<<< orphan*/ * res_buf; scalar_t__ nonblock; } ;
typedef  TYPE_1__ al_t ;
typedef  int /*<<< orphan*/  ALuint ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(al_t *al, ALuint *buffer)
{
   if (!al->res_ptr)
   {
      for (;;)
      {
         if (FUNC0(al))
            break;

         if (al->nonblock)
            return false;

         /* Must sleep as there is no proper blocking method. */
         FUNC1(1);
      }
   }

   *buffer = al->res_buf[--al->res_ptr];
   return true;
}