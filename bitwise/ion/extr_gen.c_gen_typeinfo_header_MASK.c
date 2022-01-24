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
typedef  int /*<<< orphan*/  Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(const char *kind, Type *type) { 
    if (FUNC1(type) == 0) {
        FUNC0("&(TypeInfo){%s, .size = 0, .align = 0", kind);
    } else {
        const char *ctype = FUNC2(type, "");
        FUNC0("&(TypeInfo){%s, .size = sizeof(%s), .align = alignof(%s)", kind, ctype, ctype);
    }
}