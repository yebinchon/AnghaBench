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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TEOF ; 
 int /*<<< orphan*/  buffers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(Token *tok) {
    if (tok->kind == TEOF)
        return;
    Vector *buf = FUNC1(buffers);
    FUNC0(buf, tok);
}