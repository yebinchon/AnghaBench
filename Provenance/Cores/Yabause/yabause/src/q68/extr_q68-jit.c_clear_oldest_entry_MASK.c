#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ m68k_start; int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {scalar_t__ jit_total_data; TYPE_4__* jit_table; int /*<<< orphan*/  jit_timestamp; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int Q68_JIT_TABLE_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(Q68State *state)
{
    int oldest = -1;
    int index;
    for (index = 0; index < Q68_JIT_TABLE_SIZE; index++) {
        if (state->jit_table[index].m68k_start == 0) {
            continue;
        }
        if (oldest < 0
         || FUNC2(state->jit_timestamp,
                              state->jit_table[index].timestamp,
                              state->jit_table[oldest].timestamp) < 0) {
            oldest = index;
        }
    }
    if (FUNC1(oldest >= 0)) {
        FUNC3(state, &state->jit_table[oldest]);
    } else {
        FUNC0("Tried to clear oldest entry from an empty table!");
        /* Set the total size to zero, just in case something weird happened */
        state->jit_total_data = 0;
    }
}