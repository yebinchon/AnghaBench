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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mod_map_bit ; 
 int /*<<< orphan*/ * mod_map_idx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xkb_ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xkb_map ; 
 int /*<<< orphan*/ * xkb_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
   if (mod_map_idx)
      FUNC0(mod_map_idx);
   if (mod_map_bit)
      FUNC0(mod_map_bit);
   if (xkb_map)
      FUNC2(xkb_map);
   if (xkb_ctx)
      FUNC1(xkb_ctx);
   if (xkb_state)
      FUNC3(xkb_state);

   mod_map_idx = NULL;
   mod_map_bit = NULL;
   xkb_map     = NULL;
   xkb_ctx     = NULL;
   xkb_state   = NULL;
}