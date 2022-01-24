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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ exception; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 scalar_t__ EX_TRAP ; 

__attribute__((used)) static int FUNC0(Q68State *state, uint32_t opcode)
{
    state->exception = EX_TRAP + (opcode & 0x000F);
    return 0;
}