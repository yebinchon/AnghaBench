#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum retro_key { ____Placeholder_retro_key } retro_key ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int RETROK_UNKNOWN ; 
 unsigned int* rarch_keysym_lut ; 

enum retro_key FUNC1(unsigned sym)
{
   unsigned i;

   for (i = 0; i < FUNC0(rarch_keysym_lut); i++)
   {
      if (rarch_keysym_lut[i] != sym)
         continue;

      return (enum retro_key)i;
   }

   return RETROK_UNKNOWN;
}