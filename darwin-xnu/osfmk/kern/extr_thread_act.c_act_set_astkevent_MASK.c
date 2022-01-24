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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_4__ {int /*<<< orphan*/  kevent_ast_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_KEVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(thread_t thread, uint16_t bits)
{
	FUNC1(&thread->kevent_ast_bits, bits);

	/* kevent AST shouldn't send immediate IPIs */
	FUNC0(thread, AST_KEVENT);
}