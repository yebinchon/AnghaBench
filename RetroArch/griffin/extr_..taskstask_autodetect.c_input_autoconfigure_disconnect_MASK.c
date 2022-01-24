#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int idx; struct TYPE_8__* msg; int /*<<< orphan*/  handler; struct TYPE_8__* state; } ;
typedef  TYPE_1__ retro_task_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  TYPE_1__ autoconfig_disconnect_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEVICE_DISCONNECTED_FROM_PORT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  input_autoconfigure_disconnect_handler ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,unsigned int,char const*) ; 
 TYPE_1__* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

bool FUNC12(unsigned i, const char *ident)
{
   char msg[255];
   retro_task_t         *task      = FUNC10();
   autoconfig_disconnect_t *state  = (autoconfig_disconnect_t*)FUNC0(1, sizeof(*state));

   if (!state || !task)
      goto error;

   msg[0]      = '\0';

   state->idx  = i;

   FUNC7(msg, sizeof(msg), "%s #%u (%s).",
         FUNC6(MSG_DEVICE_DISCONNECTED_FROM_PORT),
         i, ident);

   state->msg    = FUNC8(msg);

   FUNC5(state->idx);
   FUNC4(state->idx);
   FUNC2(state->idx);
   FUNC3(state->idx);

   task->state   = state;
   task->handler = input_autoconfigure_disconnect_handler;

   FUNC11(task);

   return true;

error:
   if (state)
   {
      if (!FUNC9(state->msg))
         FUNC1(state->msg);
      FUNC1(state);
   }
   if (task)
      FUNC1(task);

   return false;
}