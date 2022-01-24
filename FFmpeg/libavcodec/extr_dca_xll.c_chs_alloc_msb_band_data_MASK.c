#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int nfreqbands; int nchannels; TYPE_1__* bands; int /*<<< orphan*/ ** sample_buffer; int /*<<< orphan*/ * sample_size; } ;
struct TYPE_7__ {int nframesamples; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** msb_sample_buffer; } ;
typedef  TYPE_2__ DCAXllDecoder ;
typedef  TYPE_3__ DCAXllChSet ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DCA_XLL_DECI_HISTORY_MAX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(DCAXllDecoder *s, DCAXllChSet *c)
{
    int ndecisamples = c->nfreqbands > 1 ? DCA_XLL_DECI_HISTORY_MAX : 0;
    int nchsamples = s->nframesamples + ndecisamples;
    int i, j, nsamples = nchsamples * c->nchannels * c->nfreqbands;
    int32_t *ptr;

    // Reallocate MSB sample buffer
    FUNC1(&c->sample_buffer[0], &c->sample_size[0], nsamples * sizeof(int32_t));
    if (!c->sample_buffer[0])
        return FUNC0(ENOMEM);

    ptr = c->sample_buffer[0] + ndecisamples;
    for (i = 0; i < c->nfreqbands; i++) {
        for (j = 0; j < c->nchannels; j++) {
            c->bands[i].msb_sample_buffer[j] = ptr;
            ptr += nchsamples;
        }
    }

    return 0;
}