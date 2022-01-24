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
 int REGAREA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int FUNC1() {
    FUNC0("sub $%d, #rsp", REGAREA_SIZE);
    FUNC0("mov #rdi, (#rsp)");
    FUNC0("mov #rsi, 8(#rsp)");
    FUNC0("mov #rdx, 16(#rsp)");
    FUNC0("mov #rcx, 24(#rsp)");
    FUNC0("mov #r8, 32(#rsp)");
    FUNC0("mov #r9, 40(#rsp)");
    FUNC0("movaps #xmm0, 48(#rsp)");
    FUNC0("movaps #xmm1, 64(#rsp)");
    FUNC0("movaps #xmm2, 80(#rsp)");
    FUNC0("movaps #xmm3, 96(#rsp)");
    FUNC0("movaps #xmm4, 112(#rsp)");
    FUNC0("movaps #xmm5, 128(#rsp)");
    FUNC0("movaps #xmm6, 144(#rsp)");
    FUNC0("movaps #xmm7, 160(#rsp)");
    return REGAREA_SIZE;
}