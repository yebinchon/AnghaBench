#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  func; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; TYPE_1__ versions; struct TYPE_8__** child; } ;
typedef  TYPE_2__ CheckasmFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 TYPE_2__* FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static CheckasmFunc *FUNC5(CheckasmFunc **root, const char *name)
{
    CheckasmFunc *f = *root;

    if (f) {
        /* Search the tree for a matching node */
        int cmp = FUNC2(name, f->name);
        if (cmp) {
            f = FUNC5(&f->child[cmp > 0], name);

            /* Rebalance the tree on the way up if a new node was inserted */
            if (!f->versions.func)
                FUNC0(root);
        }
    } else {
        /* Allocate and insert a new node into the tree */
        int name_length = FUNC4(name);
        f = *root = FUNC1(sizeof(CheckasmFunc) + name_length);
        FUNC3(f->name, name, name_length + 1);
    }

    return f;
}