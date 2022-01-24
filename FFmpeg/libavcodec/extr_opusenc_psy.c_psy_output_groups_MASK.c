#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int frames; void* framesize; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  mode; } ;
struct TYPE_12__ {TYPE_2__ p; TYPE_1__** steps; TYPE_4__* avctx; TYPE_3__* options; } ;
struct TYPE_11__ {int sample_rate; } ;
struct TYPE_10__ {int max_delay_ms; } ;
struct TYPE_8__ {scalar_t__ silence; } ;
typedef  TYPE_5__ OpusPsyContext ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_BLOCK_960 ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPUS_BANDWIDTH_FULLBAND ; 
 int /*<<< orphan*/  OPUS_MODE_CELT ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC3(OpusPsyContext *s)
{
    int max_delay_samples = (s->options->max_delay_ms*s->avctx->sample_rate)/1000;
    int max_bsize = FUNC0(FUNC1(max_delay_samples), CELT_BLOCK_960);

    /* These don't change for now */
    s->p.mode      = OPUS_MODE_CELT;
    s->p.bandwidth = OPUS_BANDWIDTH_FULLBAND;

    /* Flush silent frames ASAP */
    if (s->steps[0]->silence && FUNC2(s))
        return;

    s->p.framesize = FUNC0(max_bsize, CELT_BLOCK_960);
    s->p.frames    = 1;
}