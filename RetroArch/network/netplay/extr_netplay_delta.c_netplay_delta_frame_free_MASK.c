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
typedef  size_t uint32_t ;
struct delta_frame {int /*<<< orphan*/ * simlated_input; int /*<<< orphan*/ * real_input; int /*<<< orphan*/ * resolved_input; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 size_t MAX_INPUT_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct delta_frame *delta)
{
   uint32_t i;

   if (delta->state)
   {
      FUNC0(delta->state);
      delta->state = NULL;
   }

   for (i = 0; i < MAX_INPUT_DEVICES; i++)
   {
      FUNC1(&delta->resolved_input[i]);
      FUNC1(&delta->real_input[i]);
      FUNC1(&delta->simlated_input[i]);
   }
}