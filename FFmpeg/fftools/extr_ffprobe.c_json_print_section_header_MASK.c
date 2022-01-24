#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct section {int flags; char* name; scalar_t__ id; } ;
struct TYPE_9__ {size_t level; scalar_t__* nb_item; struct section** section; TYPE_2__* priv; } ;
typedef  TYPE_1__ WriterContext ;
struct TYPE_11__ {char* str; } ;
struct TYPE_10__ {char* item_start_end; int /*<<< orphan*/  compact; int /*<<< orphan*/  indent_level; } ;
typedef  TYPE_2__ JSONContext ;
typedef  TYPE_3__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int SECTION_FLAG_IS_ARRAY ; 
 int SECTION_FLAG_IS_WRAPPER ; 
 scalar_t__ SECTION_ID_PACKETS_AND_FRAMES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(WriterContext *wctx)
{
    JSONContext *json = wctx->priv;
    AVBPrint buf;
    const struct section *section = wctx->section[wctx->level];
    const struct section *parent_section = wctx->level ?
        wctx->section[wctx->level-1] : NULL;

    if (wctx->level && wctx->nb_item[wctx->level-1])
        FUNC4(",\n");

    if (section->flags & SECTION_FLAG_IS_WRAPPER) {
        FUNC4("{\n");
        json->indent_level++;
    } else {
        FUNC2(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
        FUNC3(&buf, section->name, wctx);
        FUNC0();

        json->indent_level++;
        if (section->flags & SECTION_FLAG_IS_ARRAY) {
            FUNC4("\"%s\": [\n", buf.str);
        } else if (parent_section && !(parent_section->flags & SECTION_FLAG_IS_ARRAY)) {
            FUNC4("\"%s\": {%s", buf.str, json->item_start_end);
        } else {
            FUNC4("{%s", json->item_start_end);

            /* this is required so the parser can distinguish between packets and frames */
            if (parent_section && parent_section->id == SECTION_ID_PACKETS_AND_FRAMES) {
                if (!json->compact)
                    FUNC0();
                FUNC4("\"type\": \"%s\"", section->name);
            }
        }
        FUNC1(&buf, NULL);
    }
}