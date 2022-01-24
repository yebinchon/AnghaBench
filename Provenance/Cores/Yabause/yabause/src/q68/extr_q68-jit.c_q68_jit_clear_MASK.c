#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ m68k_start; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__** jit_hashchain; } ;
typedef  TYPE_1__ Q68State ;
typedef  TYPE_2__ Q68JitEntry ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 

void FUNC2(Q68State *state, uint32_t address)
{
    const int hashval = FUNC0(address);
    Q68JitEntry *entry = state->jit_hashchain[hashval];
    while (entry) {
        if (entry->m68k_start == address) {
            FUNC1(state, entry);
            return;
        }
        entry = entry->next;
    }
}