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
struct TYPE_3__ {int vol1; scalar_t__ c1t2; } ;
typedef  TYPE_1__ PokeyState ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(PokeyState* ps)
{
    if(ps->c1t2)
        return ps->vol1;
    else return 0;
}