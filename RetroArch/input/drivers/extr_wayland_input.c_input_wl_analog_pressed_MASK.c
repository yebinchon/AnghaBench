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
struct retro_keybind {size_t key; scalar_t__ valid; } ;
typedef  int int16_t ;
struct TYPE_3__ {int /*<<< orphan*/  key_state; } ;
typedef  TYPE_1__ input_ctx_wayland_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int RARCH_BIND_LIST_END ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * rarch_keysym_lut ; 

__attribute__((used)) static int16_t FUNC2(input_ctx_wayland_data_t *wl,
      const struct retro_keybind *binds,
      unsigned idx, unsigned id)
{
   unsigned id_minus     = 0;
   unsigned id_plus      = 0;
   int16_t pressed_minus = 0;
   int16_t pressed_plus  = 0;

   FUNC1(idx, id, id_minus, id_plus);

   if (binds
         && binds[id_minus].valid
         && (id_minus < RARCH_BIND_LIST_END)
         && FUNC0(wl->key_state, rarch_keysym_lut[binds[id_minus].key])
      )
      pressed_minus = -0x7fff;
   if (binds
         && binds[id_plus].valid
         && (id_plus < RARCH_BIND_LIST_END)
         && FUNC0(wl->key_state, rarch_keysym_lut[binds[id_plus].key])
      )
      pressed_plus = 0x7fff;

   return pressed_plus + pressed_minus;
}