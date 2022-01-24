#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  enum SwrFilterType { ____Placeholder_SwrFilterType } SwrFilterType ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_9__ {int phase_count; int linear; double factor; int filter_length; int format; int filter_type; double kaiser_beta; int felem_size; int filter_shift; int filter_alloc; int phase_count_compensation; int src_incr; int dst_incr; int ideal_dst_incr; int dst_incr_div; int dst_incr_mod; int index; scalar_t__ filter_bank; scalar_t__ frac; scalar_t__ compensation_distance; } ;
typedef  TYPE_1__ ResampleContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  AV_SAMPLE_FMT_DBLP 131 
#define  AV_SAMPLE_FMT_FLTP 130 
#define  AV_SAMPLE_FMT_S16P 129 
#define  AV_SAMPLE_FMT_S32P 128 
 void* FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 double FUNC2 (int,double) ; 
 int INT32_MAX ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int,int,int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,void*,double,int,int,int,int,int,double) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static ResampleContext *FUNC16(ResampleContext *c, int out_rate, int in_rate, int filter_size, int phase_shift, int linear,
                                    double cutoff0, enum AVSampleFormat format, enum SwrFilterType filter_type, double kaiser_beta,
                                    double precision, int cheby, int exact_rational)
{
    double cutoff = cutoff0? cutoff0 : 0.97;
    double factor= FUNC2(out_rate * cutoff / in_rate, 1.0);
    int phase_count= 1<<phase_shift;
    int phase_count_compensation = phase_count;
    int filter_length = FUNC1((int)FUNC12(filter_size/factor), 1);

    if (filter_length > 1)
        filter_length = FUNC0(filter_length, 2);

    if (exact_rational) {
        int phase_count_exact, phase_count_exact_den;

        FUNC10(&phase_count_exact, &phase_count_exact_den, out_rate, in_rate, INT_MAX);
        if (phase_count_exact <= phase_count) {
            phase_count_compensation = phase_count_exact * (phase_count / phase_count_exact);
            phase_count = phase_count_exact;
        }
    }

    if (!c || c->phase_count != phase_count || c->linear!=linear || c->factor != factor
           || c->filter_length != filter_length || c->format != format
           || c->filter_type != filter_type || c->kaiser_beta != kaiser_beta) {
        FUNC14(&c);
        c = FUNC9(sizeof(*c));
        if (!c)
            return NULL;

        c->format= format;

        c->felem_size= FUNC7(c->format);

        switch(c->format){
        case AV_SAMPLE_FMT_S16P:
            c->filter_shift = 15;
            break;
        case AV_SAMPLE_FMT_S32P:
            c->filter_shift = 30;
            break;
        case AV_SAMPLE_FMT_FLTP:
        case AV_SAMPLE_FMT_DBLP:
            c->filter_shift = 0;
            break;
        default:
            FUNC8(NULL, AV_LOG_ERROR, "Unsupported sample format\n");
            FUNC3(0);
        }

        if (filter_size/factor > INT32_MAX/256) {
            FUNC8(NULL, AV_LOG_ERROR, "Filter length too large\n");
            goto error;
        }

        c->phase_count   = phase_count;
        c->linear        = linear;
        c->factor        = factor;
        c->filter_length = filter_length;
        c->filter_alloc  = FUNC0(c->filter_length, 8);
        c->filter_bank   = FUNC4(c->filter_alloc, (phase_count+1)*c->felem_size);
        c->filter_type   = filter_type;
        c->kaiser_beta   = kaiser_beta;
        c->phase_count_compensation = phase_count_compensation;
        if (!c->filter_bank)
            goto error;
        if (FUNC11(c, (void*)c->filter_bank, factor, c->filter_length, c->filter_alloc, phase_count, 1<<c->filter_shift, filter_type, kaiser_beta))
            goto error;
        FUNC13(c->filter_bank + (c->filter_alloc*phase_count+1)*c->felem_size, c->filter_bank, (c->filter_alloc-1)*c->felem_size);
        FUNC13(c->filter_bank + (c->filter_alloc*phase_count  )*c->felem_size, c->filter_bank + (c->filter_alloc - 1)*c->felem_size, c->felem_size);
    }

    c->compensation_distance= 0;
    if(!FUNC10(&c->src_incr, &c->dst_incr, out_rate, in_rate * (int64_t)phase_count, INT32_MAX/2))
        goto error;
    while (c->dst_incr < (1<<20) && c->src_incr < (1<<20)) {
        c->dst_incr *= 2;
        c->src_incr *= 2;
    }
    c->ideal_dst_incr = c->dst_incr;
    c->dst_incr_div   = c->dst_incr / c->src_incr;
    c->dst_incr_mod   = c->dst_incr % c->src_incr;

    c->index= -phase_count*((c->filter_length-1)/2);
    c->frac= 0;

    FUNC15(c);

    return c;
error:
    FUNC6(&c->filter_bank);
    FUNC5(c);
    return NULL;
}