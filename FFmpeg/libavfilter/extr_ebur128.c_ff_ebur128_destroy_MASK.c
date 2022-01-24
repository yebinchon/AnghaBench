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
struct TYPE_4__ {struct TYPE_4__* d; struct TYPE_4__* data_ptrs; struct TYPE_4__* sample_peak; struct TYPE_4__* channel_map; struct TYPE_4__* audio_data; struct TYPE_4__* short_term_block_energy_histogram; struct TYPE_4__* block_energy_histogram; } ;
typedef  TYPE_1__ FFEBUR128State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(FFEBUR128State ** st)
{
    FUNC0((*st)->d->block_energy_histogram);
    FUNC0((*st)->d->short_term_block_energy_histogram);
    FUNC0((*st)->d->audio_data);
    FUNC0((*st)->d->channel_map);
    FUNC0((*st)->d->sample_peak);
    FUNC0((*st)->d->data_ptrs);
    FUNC0((*st)->d);
    FUNC0(*st);
    *st = NULL;
}