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
struct TYPE_4__ {scalar_t__ thr_weight; int threshold; int* cum_prob; int num_syms; int* weights; } ;
typedef  TYPE_1__ Model ;

/* Variables and functions */
 scalar_t__ THRESH_ADAPTIVE ; 
 int FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(Model *m)
{
    int i;
    int cum_prob;

    if (m->thr_weight == THRESH_ADAPTIVE)
        m->threshold = FUNC0(m);
    while (m->cum_prob[0] > m->threshold) {
        cum_prob = 0;
        for (i = m->num_syms; i >= 0; i--) {
            m->cum_prob[i] = cum_prob;
            m->weights[i]  = (m->weights[i] + 1) >> 1;
            cum_prob      += m->weights[i];
        }
    }
}