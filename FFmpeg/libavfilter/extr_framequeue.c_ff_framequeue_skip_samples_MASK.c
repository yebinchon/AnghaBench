#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* frame; } ;
struct TYPE_10__ {int queued; size_t total_samples_tail; int samples_skipped; } ;
struct TYPE_9__ {size_t nb_samples; int channels; scalar_t__ pts; size_t* linesize; size_t* extended_data; size_t* data; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ FFFrameQueue ;
typedef  TYPE_3__ FFFrameBucket ;
typedef  int /*<<< orphan*/  AVRational ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int AV_NUM_DATA_POINTERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC8(FFFrameQueue *fq, size_t samples, AVRational time_base)
{
    FFFrameBucket *b;
    size_t bytes;
    int planar, planes, i;

    FUNC6(fq);
    FUNC0(fq->queued);
    b = FUNC5(fq, 0);
    FUNC0(samples < b->frame->nb_samples);
    planar = FUNC4(b->frame->format);
    planes = planar ? b->frame->channels : 1;
    bytes = samples * FUNC1(b->frame->format);
    if (!planar)
        bytes *= b->frame->channels;
    if (b->frame->pts != AV_NOPTS_VALUE)
        b->frame->pts += FUNC3(samples, FUNC2(1, b->frame->sample_rate), time_base);
    b->frame->nb_samples -= samples;
    b->frame->linesize[0] -= bytes;
    for (i = 0; i < planes; i++)
        b->frame->extended_data[i] += bytes;
    for (i = 0; i < planes && i < AV_NUM_DATA_POINTERS; i++)
        b->frame->data[i] = b->frame->extended_data[i];
    fq->total_samples_tail += samples;
    fq->samples_skipped = 1;
    FUNC7(fq, 0);
}