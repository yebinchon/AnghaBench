#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* ty; } ;
struct TYPE_6__ {int size; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(Node *left, Node *right) {
    FUNC3("rcx");
    FUNC3("r11");
    FUNC1(right);
    FUNC0("mov #rax, #rcx");
    FUNC1(left);
    int i = 0;
    for (; i < left->ty->size; i += 8) {
        FUNC0("movq %d(#rcx), #r11", i);
        FUNC0("movq #r11, %d(#rax)", i);
    }
    for (; i < left->ty->size; i += 4) {
        FUNC0("movl %d(#rcx), #r11", i);
        FUNC0("movl #r11, %d(#rax)", i);
    }
    for (; i < left->ty->size; i++) {
        FUNC0("movb %d(#rcx), #r11", i);
        FUNC0("movb #r11, %d(#rax)", i);
    }
    FUNC2("r11");
    FUNC2("rcx");
}