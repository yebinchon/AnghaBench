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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_4__ {int phase_count_compensation; int phase_count; int dst_incr_mod; int filter_alloc; int felem_size; int filter_shift; int src_incr; int dst_incr; int ideal_dst_incr; int dst_incr_div; int index; int /*<<< orphan*/ * filter_bank; int /*<<< orphan*/  kaiser_beta; int /*<<< orphan*/  filter_type; int /*<<< orphan*/  filter_length; int /*<<< orphan*/  factor; int /*<<< orphan*/  frac; } ;
typedef  TYPE_1__ ResampleContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int,int,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(ResampleContext *c)
{
    uint8_t *new_filter_bank;
    int new_src_incr, new_dst_incr;
    int phase_count = c->phase_count_compensation;
    int ret;

    if (phase_count == c->phase_count)
        return 0;

    FUNC1(!c->frac && !c->dst_incr_mod);

    new_filter_bank = FUNC2(c->filter_alloc, (phase_count + 1) * c->felem_size);
    if (!new_filter_bank)
        return FUNC0(ENOMEM);

    ret = FUNC5(c, new_filter_bank, c->factor, c->filter_length, c->filter_alloc,
                       phase_count, 1 << c->filter_shift, c->filter_type, c->kaiser_beta);
    if (ret < 0) {
        FUNC3(&new_filter_bank);
        return ret;
    }
    FUNC6(new_filter_bank + (c->filter_alloc*phase_count+1)*c->felem_size, new_filter_bank, (c->filter_alloc-1)*c->felem_size);
    FUNC6(new_filter_bank + (c->filter_alloc*phase_count  )*c->felem_size, new_filter_bank + (c->filter_alloc - 1)*c->felem_size, c->felem_size);

    if (!FUNC4(&new_src_incr, &new_dst_incr, c->src_incr,
                   c->dst_incr * (int64_t)(phase_count/c->phase_count), INT32_MAX/2))
    {
        FUNC3(&new_filter_bank);
        return FUNC0(EINVAL);
    }

    c->src_incr = new_src_incr;
    c->dst_incr = new_dst_incr;
    while (c->dst_incr < (1<<20) && c->src_incr < (1<<20)) {
        c->dst_incr *= 2;
        c->src_incr *= 2;
    }
    c->ideal_dst_incr = c->dst_incr;
    c->dst_incr_div   = c->dst_incr / c->src_incr;
    c->dst_incr_mod   = c->dst_incr % c->src_incr;
    c->index         *= phase_count / c->phase_count;
    c->phase_count    = phase_count;
    FUNC3(&c->filter_bank);
    c->filter_bank = new_filter_bank;
    return 0;
}