#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ T1; scalar_t__ T2; scalar_t__ T3; scalar_t__ reset; int maxval; int /*<<< orphan*/  near; int /*<<< orphan*/  bpp; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ JLSState ;

/* Variables and functions */
 int /*<<< orphan*/  LSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(JLSState *state, PutBitContext *pb)
{
    /* Test if we have default params and don't need to store LSE */
    JLSState state2 = { 0 };
    state2.bpp  = state->bpp;
    state2.near = state->near;
    FUNC0(&state2, 1);
    if (state->T1 == state2.T1 &&
        state->T2 == state2.T2 &&
        state->T3 == state2.T3 &&
        state->reset == state2.reset)
        return;
    /* store LSE type 1 */
    FUNC2(pb, LSE);
    FUNC1(pb, 16, 13);
    FUNC1(pb, 8, 1);
    FUNC1(pb, 16, state->maxval);
    FUNC1(pb, 16, state->T1);
    FUNC1(pb, 16, state->T2);
    FUNC1(pb, 16, state->T3);
    FUNC1(pb, 16, state->reset);
}