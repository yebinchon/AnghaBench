#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* t; size_t n; int* b; int* l; int* r; } ;
typedef  TYPE_1__ crop_record_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0( crop_record_t *crops, int t, int b, int l, int r )
{
    crops->t[crops->n] = t;
    crops->b[crops->n] = b;
    crops->l[crops->n] = l;
    crops->r[crops->n] = r;
    ++crops->n;
}