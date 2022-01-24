#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t num_items; TYPE_3__* items; } ;
struct TYPE_11__ {int /*<<< orphan*/  pos; TYPE_1__ import; } ;
struct TYPE_10__ {scalar_t__ name; scalar_t__ rename; } ;
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  Sym ;
typedef  TYPE_2__ Package ;
typedef  TYPE_3__ ImportItem ;
typedef  TYPE_4__ Decl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC3(Decl *decl, Package *package) {
    for (size_t i = 0; i < decl->import.num_items; i++) {
        ImportItem item = decl->import.items[i];
        Sym *sym = FUNC1(package, item.name);
        if (!sym) {
            FUNC0(decl->pos, "Symbol '%s' does not exist in package '%s'", item.name, package->path);
        }
        FUNC2(item.rename ? item.rename : item.name, sym);
    }
}