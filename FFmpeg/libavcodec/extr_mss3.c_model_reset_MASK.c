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
struct TYPE_4__ {int num_syms; int* weights; int upd_val; int till_rescale; scalar_t__ tot_weight; } ;
typedef  TYPE_1__ Model ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC1(Model *m)
{
    int i;

    m->tot_weight   = 0;
    for (i = 0; i < m->num_syms - 1; i++)
        m->weights[i] = 1;
    m->weights[m->num_syms - 1] = 0;

    m->upd_val      = m->num_syms;
    m->till_rescale = 1;
    FUNC0(m, m->num_syms - 1);
    m->till_rescale =
    m->upd_val      = (m->num_syms + 6) >> 1;
}