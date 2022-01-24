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
struct TYPE_2__ {char const* (* name ) (unsigned int) ;} ;

/* Variables and functions */
 char const** XBOX_CONTROLLER_NAMES ; 
 char const** XBOX_ONE_CONTROLLER_NAMES ; 
 TYPE_1__ dinput_joypad ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char const* FUNC2 (unsigned int) ; 
 char const* FUNC3 (unsigned int) ; 

const char *FUNC4(unsigned pad)
{
   int xuser = FUNC0(pad);
#ifdef HAVE_DINPUT
   /* Use the real controller name for XBOX One controllers since
      they are slightly different  */
   if (xuser < 0)
      return dinput_joypad.name(pad);

   if (strstr(dinput_joypad.name(pad), "Xbox One For Windows"))
      return XBOX_ONE_CONTROLLER_NAMES[xuser];
#endif

   if (xuser < 0)
      return NULL;

   return XBOX_CONTROLLER_NAMES[xuser];
}