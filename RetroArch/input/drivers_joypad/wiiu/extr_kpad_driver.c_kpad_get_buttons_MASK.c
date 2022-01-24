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
typedef  int /*<<< orphan*/  input_bits_t ;
struct TYPE_2__ {int /*<<< orphan*/  button_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 TYPE_1__* wiimotes ; 

__attribute__((used)) static void FUNC4(unsigned pad, input_bits_t *state)
{
   int channel = FUNC3(pad);

   if (!FUNC2(pad) || channel < 0)
      FUNC0(state);
   else
      FUNC1(state, wiimotes[channel].button_state);
}