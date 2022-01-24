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
struct TYPE_3__ {int /*<<< orphan*/ * info; scalar_t__ entry_index; int /*<<< orphan*/  list_index; } ;
typedef  TYPE_1__ database_state_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
      database_state_handle_t *db_state
      )
{
   db_state->list_index++;
   db_state->entry_index = 0;

   FUNC0(db_state->info);
   FUNC1(db_state->info);
   db_state->info        = NULL;

   return 1;
}