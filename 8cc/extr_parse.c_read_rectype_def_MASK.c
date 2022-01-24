#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ kind; int is_struct; int align; int size; int /*<<< orphan*/ * fields; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Dict ;

/* Variables and functions */
 scalar_t__ KIND_ENUM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int*,int*,int) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  tags ; 

__attribute__((used)) static Type *FUNC6(bool is_struct) {
    char *tag = FUNC5();
    Type *r;
    if (tag) {
        r = FUNC2(tags, tag);
        if (r && (r->kind == KIND_ENUM || r->is_struct != is_struct))
            FUNC0("declarations of %s does not match", tag);
        if (!r) {
            r = FUNC1(is_struct);
            FUNC3(tags, tag, r);
        }
    } else {
        r = FUNC1(is_struct);
    }
    int size = 0, align = 1;
    Dict *fields = FUNC4(&size, &align, is_struct);
    r->align = align;
    if (fields) {
        r->fields = fields;
        r->size = size;
    }
    return r;
}