#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* get_architecture ) () ;} ;
typedef  TYPE_1__ frontend_ctx_driver_t ;
typedef  enum frontend_architecture { ____Placeholder_frontend_architecture } frontend_architecture ;

/* Variables and functions */
 int FRONTEND_ARCH_NONE ; 
 TYPE_1__* FUNC0 () ; 
 int FUNC1 () ; 

enum frontend_architecture FUNC2(void)
{
   frontend_ctx_driver_t *frontend = FUNC0();
   if (!frontend || !frontend->get_architecture)
      return FRONTEND_ARCH_NONE;
   return frontend->get_architecture();
}