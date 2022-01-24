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
struct retro_keybind {scalar_t__ key; } ;
typedef  int /*<<< orphan*/  sdl_input_t ;
typedef  int int16_t ;

/* Variables and functions */
 scalar_t__ RETROK_LAST ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int16_t FUNC2(sdl_input_t *sdl, const struct retro_keybind *binds,
      unsigned idx, unsigned id)
{
   int16_t pressed_minus = 0, pressed_plus = 0;
   unsigned id_minus = 0;
   unsigned id_plus  = 0;

   FUNC0(idx, id, id_minus, id_plus);

   if ((binds[id_minus].key < RETROK_LAST) && FUNC1(binds[id_minus].key))
      pressed_minus = -0x7fff;
   if ((binds[id_plus].key  < RETROK_LAST) && FUNC1(binds[id_plus].key))
      pressed_plus  = 0x7fff;

   return pressed_plus + pressed_minus;
}