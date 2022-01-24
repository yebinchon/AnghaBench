#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  time_base; } ;
struct TYPE_8__ {int pkt_pos; int interlaced_frame; int nb_samples; } ;
struct TYPE_7__ {int* var_values; int /*<<< orphan*/  expr; } ;
typedef  TYPE_1__ SetPTSContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int NAN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t VAR_INTERLACED ; 
 size_t VAR_NB_SAMPLES ; 
 size_t VAR_POS ; 
 size_t VAR_PTS ; 
 size_t VAR_RTCTIME ; 
 size_t VAR_S ; 
 size_t VAR_STARTPTS ; 
 size_t VAR_STARTT ; 
 size_t VAR_T ; 
 double FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static double FUNC5(SetPTSContext *setpts, AVFilterLink *inlink, AVFrame *frame, int64_t pts)
{
    if (FUNC4(setpts->var_values[VAR_STARTPTS])) {
        setpts->var_values[VAR_STARTPTS] = FUNC0(pts);
        setpts->var_values[VAR_STARTT  ] = FUNC1(pts, inlink->time_base);
    }
    setpts->var_values[VAR_PTS       ] = FUNC0(pts);
    setpts->var_values[VAR_T         ] = FUNC1(pts, inlink->time_base);
    setpts->var_values[VAR_POS       ] = !frame || frame->pkt_pos == -1 ? NAN : frame->pkt_pos;
    setpts->var_values[VAR_RTCTIME   ] = FUNC3();

    if (frame) {
        if (inlink->type == AVMEDIA_TYPE_VIDEO) {
            setpts->var_values[VAR_INTERLACED] = frame->interlaced_frame;
        } else if (inlink->type == AVMEDIA_TYPE_AUDIO) {
            setpts->var_values[VAR_S] = frame->nb_samples;
            setpts->var_values[VAR_NB_SAMPLES] = frame->nb_samples;
        }
    }

    return FUNC2(setpts->expr, setpts->var_values, NULL);
}