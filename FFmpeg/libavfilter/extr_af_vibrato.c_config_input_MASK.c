#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int channels; double buf_size; int wave_table_size; int freq; scalar_t__ wave_table_index; void* wave_table; scalar_t__ buf_index; void** buf; } ;
typedef  TYPE_1__ VibratoContext ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int channels; double sample_rate; TYPE_3__* dst; } ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_DBL ; 
 int /*<<< orphan*/  ENOMEM ; 
 double M_PI_2 ; 
 int /*<<< orphan*/  WAVE_SIN ; 
 void** FUNC1 (int,int) ; 
 void* FUNC2 (double,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,double,double,int,double) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    int c;
    AVFilterContext *ctx = inlink->dst;
    VibratoContext *s = ctx->priv;
    s->channels = inlink->channels;

    s->buf = FUNC1(inlink->channels, sizeof(*s->buf));
    if (!s->buf)
        return FUNC0(ENOMEM);
    s->buf_size = inlink->sample_rate * 0.005;
    for (c = 0; c < s->channels; c++) {
        s->buf[c] = FUNC2(s->buf_size, sizeof(*s->buf[c]));
        if (!s->buf[c])
            return FUNC0(ENOMEM);
    }
    s->buf_index = 0;

    s->wave_table_size = inlink->sample_rate / s->freq;
    s->wave_table = FUNC2(s->wave_table_size, sizeof(*s->wave_table));
    if (!s->wave_table)
        return FUNC0(ENOMEM);
    FUNC3(WAVE_SIN, AV_SAMPLE_FMT_DBL, s->wave_table, s->wave_table_size, 0.0, s->buf_size - 1, 3.0 * M_PI_2);
    s->wave_table_index = 0;

    return 0;
}