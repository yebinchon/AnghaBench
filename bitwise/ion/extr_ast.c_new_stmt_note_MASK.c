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
struct TYPE_4__ {int /*<<< orphan*/  note; } ;
typedef  TYPE_1__ Stmt ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Note ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_NOTE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Stmt *FUNC1(SrcPos pos, Note note) {
    Stmt *s = FUNC0(STMT_NOTE, pos);
    s->note = note;
    return s;
}