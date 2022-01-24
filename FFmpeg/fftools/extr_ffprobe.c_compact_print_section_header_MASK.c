#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct section {int flags; char* name; int /*<<< orphan*/  element_name; } ;
struct TYPE_6__ {size_t level; int /*<<< orphan*/ * nb_item; TYPE_4__* section_pbuf; struct section** section; TYPE_2__* priv; } ;
typedef  TYPE_1__ WriterContext ;
struct TYPE_8__ {int /*<<< orphan*/  str; } ;
struct TYPE_7__ {int* terminate_line; int* has_nested_elems; int* nested_section; int /*<<< orphan*/  item_sep; scalar_t__ print_section; } ;
typedef  TYPE_2__ CompactContext ;

/* Variables and functions */
 int SECTION_FLAG_IS_ARRAY ; 
 int SECTION_FLAG_IS_WRAPPER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(WriterContext *wctx)
{
    CompactContext *compact = wctx->priv;
    const struct section *section = wctx->section[wctx->level];
    const struct section *parent_section = wctx->level ?
        wctx->section[wctx->level-1] : NULL;
    compact->terminate_line[wctx->level] = 1;
    compact->has_nested_elems[wctx->level] = 0;

    FUNC0(&wctx->section_pbuf[wctx->level]);
    if (!(section->flags & SECTION_FLAG_IS_ARRAY) && parent_section &&
        !(parent_section->flags & (SECTION_FLAG_IS_WRAPPER|SECTION_FLAG_IS_ARRAY))) {
        compact->nested_section[wctx->level] = 1;
        compact->has_nested_elems[wctx->level-1] = 1;
        FUNC1(&wctx->section_pbuf[wctx->level], "%s%s:",
                   wctx->section_pbuf[wctx->level-1].str,
                   (char *)FUNC2(section->element_name, section->name));
        wctx->nb_item[wctx->level] = wctx->nb_item[wctx->level-1];
    } else {
        if (parent_section && compact->has_nested_elems[wctx->level-1] &&
            (section->flags & SECTION_FLAG_IS_ARRAY)) {
            compact->terminate_line[wctx->level-1] = 0;
            FUNC3("\n");
        }
        if (compact->print_section &&
            !(section->flags & (SECTION_FLAG_IS_WRAPPER|SECTION_FLAG_IS_ARRAY)))
            FUNC3("%s%c", section->name, compact->item_sep);
    }
}