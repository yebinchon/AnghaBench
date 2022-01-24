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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int (* button ) (void*,unsigned int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* generic_hid ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (void*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(unsigned port, uint16_t joykey)
{
   if (generic_hid && generic_hid->button)
      return generic_hid->button((void*)FUNC0(), port, joykey);
   return false;
}