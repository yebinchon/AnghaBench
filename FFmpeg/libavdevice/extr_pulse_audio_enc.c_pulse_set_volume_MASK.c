#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pa_volume_t ;
struct TYPE_7__ {int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ pa_sample_spec ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  int /*<<< orphan*/  pa_cvolume ;
struct TYPE_8__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  ctx; int /*<<< orphan*/  mainloop; int /*<<< orphan*/  base_volume; } ;
typedef  TYPE_2__ PulseData ;

/* Variables and functions */
 double PA_VOLUME_NORM ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pulse_context_result ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(PulseData *s, double volume)
{
    pa_operation *op;
    pa_cvolume cvol;
    pa_volume_t vol;
    const pa_sample_spec *ss = FUNC4(s->stream);

    vol = FUNC6(FUNC0(volume * PA_VOLUME_NORM), s->base_volume);
    FUNC2(&cvol, ss->channels, PA_VOLUME_NORM);
    FUNC5(&cvol, &cvol, vol);
    FUNC7(s->mainloop);
    op = FUNC1(s->ctx, FUNC3(s->stream),
                                          &cvol, pulse_context_result, s);
    return FUNC8(s, op, "pa_context_set_sink_input_volume");
}