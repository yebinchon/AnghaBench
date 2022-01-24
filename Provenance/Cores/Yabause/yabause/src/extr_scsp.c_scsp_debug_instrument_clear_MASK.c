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
struct DebugInstrument {int dummy; } ;

/* Variables and functions */
 int NUM_DEBUG_INSTRUMENTS ; 
 scalar_t__ debug_instrument_pos ; 
 int /*<<< orphan*/  debug_instruments ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1()
{
   debug_instrument_pos = 0;
   FUNC0(debug_instruments, 0, sizeof(struct DebugInstrument) * NUM_DEBUG_INSTRUMENTS);
}