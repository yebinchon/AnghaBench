#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32_t ;
struct net_buf_simple {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_buf_simple*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_buf_simple*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_buf_simple*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_buf_simple*,int /*<<< orphan*/ ) ; 

void FUNC4(struct net_buf_simple *msg, u32_t opcode)
{
    FUNC3(msg, 0);

    if (opcode < 0x100) {
        /* 1-byte OpCode */
        FUNC2(msg, opcode);
        return;
    }

    if (opcode < 0x10000) {
        /* 2-byte OpCode */
        FUNC0(msg, opcode);
        return;
    }

    /* 3-byte OpCode */
    FUNC2(msg, ((opcode >> 16) & 0xff));
    FUNC1(msg, opcode & 0xffff);
}