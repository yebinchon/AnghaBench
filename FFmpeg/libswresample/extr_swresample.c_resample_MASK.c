#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ ch_count; scalar_t__ planar; scalar_t__ fmt; int count; } ;
struct TYPE_19__ {scalar_t__ engine; int in_buffer_index; int in_buffer_count; int resample_in_constraint; TYPE_3__ in_buffer; int /*<<< orphan*/  resample; TYPE_1__* resampler; scalar_t__ flushed; } ;
struct TYPE_18__ {int (* invert_initial_buffer ) (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,int,int*,int*) ;int (* multiple_resample ) (int /*<<< orphan*/ ,TYPE_3__*,int,TYPE_3__*,int,int*) ;} ;
typedef  TYPE_2__ SwrContext ;
typedef  TYPE_3__ AudioData ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 scalar_t__ SWR_ENGINE_SWR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,int,int*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int,TYPE_3__*,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int,TYPE_3__*,int,int*) ; 
 int FUNC7 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC8(SwrContext *s, AudioData *out_param, int out_count,
                             const AudioData * in_param, int in_count){
    AudioData in, out, tmp;
    int ret_sum=0;
    int border=0;
    int padless = ARCH_X86 && s->engine == SWR_ENGINE_SWR ? 7 : 0;

    FUNC1(s->in_buffer.ch_count == in_param->ch_count);
    FUNC1(s->in_buffer.planar   == in_param->planar);
    FUNC1(s->in_buffer.fmt      == in_param->fmt);

    tmp=out=*out_param;
    in =  *in_param;

    border = s->resampler->invert_initial_buffer(s->resample, &s->in_buffer,
                 &in, in_count, &s->in_buffer_index, &s->in_buffer_count);
    if (border == INT_MAX) {
        return 0;
    } else if (border < 0) {
        return border;
    } else if (border) {
        FUNC2(&in, &in, border);
        in_count -= border;
        s->resample_in_constraint = 0;
    }

    do{
        int ret, size, consumed;
        if(!s->resample_in_constraint && s->in_buffer_count){
            FUNC2(&tmp, &s->in_buffer, s->in_buffer_index);
            ret= s->resampler->multiple_resample(s->resample, &out, out_count, &tmp, s->in_buffer_count, &consumed);
            out_count -= ret;
            ret_sum += ret;
            FUNC2(&out, &out, ret);
            s->in_buffer_count -= consumed;
            s->in_buffer_index += consumed;

            if(!in_count)
                break;
            if(s->in_buffer_count <= border){
                FUNC2(&in, &in, -s->in_buffer_count);
                in_count += s->in_buffer_count;
                s->in_buffer_count=0;
                s->in_buffer_index=0;
                border = 0;
            }
        }

        if((s->flushed || in_count > padless) && !s->in_buffer_count){
            s->in_buffer_index=0;
            ret= s->resampler->multiple_resample(s->resample, &out, out_count, &in, FUNC0(in_count-padless, 0), &consumed);
            out_count -= ret;
            ret_sum += ret;
            FUNC2(&out, &out, ret);
            in_count -= consumed;
            FUNC2(&in, &in, consumed);
        }

        //TODO is this check sane considering the advanced copy avoidance below
        size= s->in_buffer_index + s->in_buffer_count + in_count;
        if(   size > s->in_buffer.count
           && s->in_buffer_count + in_count <= s->in_buffer_index){
            FUNC2(&tmp, &s->in_buffer, s->in_buffer_index);
            FUNC3(&s->in_buffer, &tmp, s->in_buffer_count);
            s->in_buffer_index=0;
        }else
            if((ret=FUNC7(&s->in_buffer, size)) < 0)
                return ret;

        if(in_count){
            int count= in_count;
            if(s->in_buffer_count && s->in_buffer_count+2 < count && out_count) count= s->in_buffer_count+2;

            FUNC2(&tmp, &s->in_buffer, s->in_buffer_index + s->in_buffer_count);
            FUNC3(&tmp, &in, /*in_*/count);
            s->in_buffer_count += count;
            in_count -= count;
            border += count;
            FUNC2(&in, &in, count);
            s->resample_in_constraint= 0;
            if(s->in_buffer_count != count || in_count)
                continue;
            if (padless) {
                padless = 0;
                continue;
            }
        }
        break;
    }while(1);

    s->resample_in_constraint= !!out_count;

    return ret_sum;
}