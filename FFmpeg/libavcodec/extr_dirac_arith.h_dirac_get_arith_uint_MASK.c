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
struct TYPE_4__ {int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ DiracArith ;

/* Variables and functions */
 int /*<<< orphan*/  AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int* ff_dirac_next_ctx ; 

__attribute__((used)) static inline int FUNC2(DiracArith *c, int follow_ctx, int data_ctx)
{
    int ret = 1;
    while (!FUNC1(c, follow_ctx)) {
        if (ret >= 0x40000000) {
            FUNC0(NULL, AV_LOG_ERROR, "dirac_get_arith_uint overflow\n");
            c->error = AVERROR_INVALIDDATA;
            return -1;
        }
        ret <<= 1;
        ret += FUNC1(c, data_ctx);
        follow_ctx = ff_dirac_next_ctx[follow_ctx];
    }
    return ret-1;
}