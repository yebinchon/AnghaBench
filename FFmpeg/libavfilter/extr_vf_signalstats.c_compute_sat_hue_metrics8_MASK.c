#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_6__ {TYPE_3__* dst_hue; TYPE_3__* dst_sat; TYPE_3__* src; } ;
typedef  TYPE_1__ ThreadDataHueSatMetrics ;
struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_8__ {int* linesize; int** data; } ;
struct TYPE_7__ {int chromah; int chromaw; } ;
typedef  TYPE_2__ SignalstatsContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int M_PI ; 
 int FUNC0 (int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int const,int const) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    int i, j;
    ThreadDataHueSatMetrics *td = arg;
    const SignalstatsContext *s = ctx->priv;
    const AVFrame *src = td->src;
    AVFrame *dst_sat = td->dst_sat;
    AVFrame *dst_hue = td->dst_hue;

    const int slice_start = (s->chromah *  jobnr   ) / nb_jobs;
    const int slice_end   = (s->chromah * (jobnr+1)) / nb_jobs;

    const int lsz_u = src->linesize[1];
    const int lsz_v = src->linesize[2];
    const uint8_t *p_u = src->data[1] + slice_start * lsz_u;
    const uint8_t *p_v = src->data[2] + slice_start * lsz_v;

    const int lsz_sat = dst_sat->linesize[0];
    const int lsz_hue = dst_hue->linesize[0];
    uint8_t *p_sat = dst_sat->data[0] + slice_start * lsz_sat;
    uint8_t *p_hue = dst_hue->data[0] + slice_start * lsz_hue;

    for (j = slice_start; j < slice_end; j++) {
        for (i = 0; i < s->chromaw; i++) {
            const int yuvu = p_u[i];
            const int yuvv = p_v[i];
            p_sat[i] = FUNC3(yuvu - 128, yuvv - 128); // int or round?
            ((int16_t*)p_hue)[i] = FUNC2(FUNC1((180 / M_PI) * FUNC0(yuvu-128, yuvv-128) + 180), 360.);
        }
        p_u   += lsz_u;
        p_v   += lsz_v;
        p_sat += lsz_sat;
        p_hue += lsz_hue;
    }

    return 0;
}