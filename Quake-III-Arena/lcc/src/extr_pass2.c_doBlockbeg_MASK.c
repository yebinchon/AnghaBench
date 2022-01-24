#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct block {struct block* prev; TYPE_3__* begin; } ;
typedef  int /*<<< orphan*/  rcc_interface_ty ;
struct TYPE_6__ {int /*<<< orphan*/ * types; int /*<<< orphan*/ * identifiers; int /*<<< orphan*/ ** locals; int /*<<< orphan*/  level; } ;
struct TYPE_5__ {TYPE_2__ block; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef  TYPE_3__* Code ;

/* Variables and functions */
 int /*<<< orphan*/  Blockbeg ; 
 int /*<<< orphan*/  FUNC ; 
 int /*<<< orphan*/  FUNC0 (struct block*,int /*<<< orphan*/ ) ; 
 struct block* blockstack ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  level ; 
 int /*<<< orphan*/ ** FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(rcc_interface_ty in) {
	struct block *b;
	Code cp = FUNC1(Blockbeg);

	FUNC2();
	cp->u.block.level = level;
	cp->u.block.locals = FUNC3(1, sizeof *cp->u.block.locals, FUNC);
	cp->u.block.locals[0] = NULL;
	cp->u.block.identifiers = NULL;
	cp->u.block.types = NULL;
	FUNC0(b, FUNC);
	b->begin = cp;
	b->prev = blockstack;
	blockstack = b;
}