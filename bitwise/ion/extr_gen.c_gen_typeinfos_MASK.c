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
 scalar_t__ flag_notypeinfo ; 
 int /*<<< orphan*/  gen_indent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int next_typeid ; 

void FUNC6(void) {
    FUNC3("#define TYPEID0(index, kind) ((ullong)(index) | ((ullong)(kind) << 24))");
    FUNC3("#define TYPEID(index, kind, ...) ((ullong)(index) | ((ullong)sizeof(__VA_ARGS__) << 32) | ((ullong)(kind) << 24))");
    FUNC2();
    if (flag_notypeinfo) {
        FUNC3("int num_typeinfos;");
        FUNC3("TypeInfo **typeinfos;");
    } else {
        int num_typeinfos = next_typeid;
        FUNC3("TypeInfo *typeinfo_table[%d] = {", num_typeinfos);
        gen_indent++;
        for (int typeid = 0; typeid < num_typeinfos; typeid++) {
            FUNC3("[%d] = ", typeid);
            Type *type = FUNC4(typeid);
            if (type && !FUNC5(type)) {
                FUNC0(type);
            } else {
                FUNC1("NULL, // No associated type");
            }
        }
        gen_indent--;
        FUNC3("};");
        FUNC2();
        FUNC3("int num_typeinfos = %d;", num_typeinfos);
        FUNC3("TypeInfo **typeinfos = (TypeInfo **)typeinfo_table;");
    }
}