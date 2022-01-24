#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  relocs; } ;
struct TYPE_13__ {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  locrelocs; int /*<<< orphan*/  extrelocs; int /*<<< orphan*/  sectnum; } ;
typedef  TYPE_1__ KXLDSym ;
typedef  TYPE_2__ KXLDSect ;
typedef  int /*<<< orphan*/  KXLDReloc ;
typedef  TYPE_1__ KXLDObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  finish ; 
 TYPE_2__* FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 

const KXLDReloc * 
FUNC6(const KXLDObject *object, const KXLDSym *sym)
{
    const KXLDReloc *reloc = NULL;
    const KXLDSect *sect = NULL;
    uint32_t offset = 0;

    FUNC0(object);
    FUNC0(sym);

    sect = FUNC1(object, sym->sectnum);
    FUNC5(sect, finish);

    if (FUNC2(object)) {
        reloc = FUNC3(&object->extrelocs, 
                                               sym->base_addr);
        if (!reloc) {
            reloc = FUNC3(&object->locrelocs, 
                                                   sym->base_addr);
        }
    } else {
        offset = FUNC4(sym, sect);
        reloc = FUNC3(&sect->relocs, offset);
    }

finish:
    return reloc;
}