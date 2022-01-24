#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* ty; } ;
struct TYPE_8__ {TYPE_1__* ptr; } ;
struct TYPE_7__ {int size; } ;
typedef  TYPE_3__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(char kind, Node *left, Node *right) {
    SAVE;
    FUNC1(left);
    FUNC4("rcx");
    FUNC4("rax");
    FUNC1(right);
    int size = left->ty->ptr->size;
    if (size > 1)
        FUNC0("imul $%d, #rax", size);
    FUNC0("mov #rax, #rcx");
    FUNC3("rax");
    switch (kind) {
    case '+': FUNC0("add #rcx, #rax"); break;
    case '-': FUNC0("sub #rcx, #rax"); break;
    default: FUNC2("invalid operator '%d'", kind);
    }
    FUNC3("rcx");
}