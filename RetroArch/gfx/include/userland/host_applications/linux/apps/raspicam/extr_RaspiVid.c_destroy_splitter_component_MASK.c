#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * output; } ;
struct TYPE_4__ {TYPE_2__* splitter_component; scalar_t__ splitter_pool; } ;
typedef  TYPE_1__ RASPIVID_STATE ;

/* Variables and functions */
 size_t SPLITTER_OUTPUT_PORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(RASPIVID_STATE *state)
{
   // Get rid of any port buffers first
   if (state->splitter_pool)
   {
      FUNC1(state->splitter_component->output[SPLITTER_OUTPUT_PORT], state->splitter_pool);
   }

   if (state->splitter_component)
   {
      FUNC0(state->splitter_component);
      state->splitter_component = NULL;
   }
}