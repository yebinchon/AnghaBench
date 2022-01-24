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
struct TYPE_4__ {int* dmix_coeff; int hier_ofs; int* dmix_scale; int* dmix_scale_inv; int nchannels; } ;
typedef  TYPE_1__ DCAXllChSet ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 void* FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(DCAXllChSet *c, DCAXllChSet *o)
{
    int i, j, *coeff_ptr = c->dmix_coeff;

    for (i = 0; i < c->hier_ofs; i++) {
        int scale = o->dmix_scale[i];
        int scale_inv = o->dmix_scale_inv[i];
        c->dmix_scale[i] = FUNC0(c->dmix_scale[i], scale);
        c->dmix_scale_inv[i] = FUNC1(c->dmix_scale_inv[i], scale_inv);
        for (j = 0; j < c->nchannels; j++) {
            int coeff = FUNC1(*coeff_ptr, scale_inv);
            *coeff_ptr++ = FUNC0(coeff, o->dmix_scale[c->hier_ofs + j]);
        }
    }
}