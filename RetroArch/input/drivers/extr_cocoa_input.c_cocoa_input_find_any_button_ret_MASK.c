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
typedef  int /*<<< orphan*/  input_bits_t ;
typedef  int /*<<< orphan*/  cocoa_input_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC1(cocoa_input_data_t *apple,
   input_bits_t * state, unsigned port)
{
   unsigned i;

   if (state)
      for (i = 0; i < 256; i++)
         if (FUNC0(state,i))
            return i;
   return -1;
}