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
struct TYPE_4__ {int count; int error_sum; int drift; scalar_t__ bias; } ;
typedef  TYPE_1__ VlcState ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,scalar_t__,int,int,int,int) ; 
 int FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int) ; 

__attribute__((used)) static inline int FUNC4(GetBitContext *gb, VlcState *const state,
                                 int bits)
{
    int k, i, v, ret;

    i = state->count;
    k = 0;
    while (i < state->error_sum) { // FIXME: optimize
        k++;
        i += i;
    }

    v = FUNC2(gb, k, 12, bits);
    FUNC0(NULL, "v:%d bias:%d error:%d drift:%d count:%d k:%d",
            v, state->bias, state->error_sum, state->drift, state->count, k);

    v ^= ((2 * state->drift + state->count) >> 31);

    ret = FUNC1(v + state->bias, bits);

    FUNC3(state, v);

    return ret;
}