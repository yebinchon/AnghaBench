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
struct TYPE_3__ {int /*<<< orphan*/  readout_0; scalar_t__ c0sw4; scalar_t__ c0vo; } ;
typedef  TYPE_1__ PokeyState ;

/* Variables and functions */
 int /*<<< orphan*/  readout0_hipass ; 
 int /*<<< orphan*/  readout0_normal ; 
 int /*<<< orphan*/  readout0_vo ; 

__attribute__((used)) static void FUNC0(PokeyState* ps)
{
    if(ps->c0vo)
        ps->readout_0 = readout0_vo;
    else if(ps->c0sw4)
        ps->readout_0 = readout0_hipass;
    else
        ps->readout_0 = readout0_normal;
}