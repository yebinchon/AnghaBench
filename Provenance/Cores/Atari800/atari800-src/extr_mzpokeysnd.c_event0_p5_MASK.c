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
struct TYPE_3__ {int c0t1; int c0t2; } ;
typedef  TYPE_1__ PokeyState ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(PokeyState* ps, int p5v, int p4v, int p917v)
{
    if(ps->c0t1)
        ps->c0t2 = !ps->c0t2;
    ps->c0t1 = p5v;
}