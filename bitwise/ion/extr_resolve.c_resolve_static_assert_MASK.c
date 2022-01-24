#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int num_args; int /*<<< orphan*/  pos; TYPE_1__* args; } ;
struct TYPE_8__ {int /*<<< orphan*/  ull; } ;
struct TYPE_9__ {TYPE_2__ val; } ;
struct TYPE_7__ {int /*<<< orphan*/  expr; } ;
typedef  TYPE_3__ Operand ;
typedef  TYPE_4__ Note ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(Note note) {
    if (note.num_args != 1) {
        FUNC0(note.pos, "#static_assert takes 1 argument");
    }
    Operand operand = FUNC1(note.args[0].expr);
    if (!operand.val.ull) {
        FUNC0(note.pos, "#static_assert failed");
    }
}