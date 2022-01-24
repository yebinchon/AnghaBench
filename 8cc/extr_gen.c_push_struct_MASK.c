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

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int stackpos ; 

__attribute__((used)) static int FUNC2(int size) {
    SAVE;
    int aligned = FUNC0(size, 8);
    FUNC1("sub $%d, #rsp", aligned);
    FUNC1("mov #rcx, -8(#rsp)");
    FUNC1("mov #r11, -16(#rsp)");
    FUNC1("mov #rax, #rcx");
    int i = 0;
    for (; i < size; i += 8) {
        FUNC1("movq %d(#rcx), #r11", i);
        FUNC1("mov #r11, %d(#rsp)", i);
    }
    for (; i < size; i += 4) {
        FUNC1("movl %d(#rcx), #r11", i);
        FUNC1("movl #r11d, %d(#rsp)", i);
    }
    for (; i < size; i++) {
        FUNC1("movb %d(#rcx), #r11", i);
        FUNC1("movb #r11b, %d(#rsp)", i);
    }
    FUNC1("mov -8(#rsp), #rcx");
    FUNC1("mov -16(#rsp), #r11");
    stackpos += aligned;
    return aligned;
}