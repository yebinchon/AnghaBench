#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct section {int flags; char const* element_name; } ;
typedef  int /*<<< orphan*/  XMLContext ;
struct TYPE_4__ {size_t level; scalar_t__* nb_item; struct section** section; int /*<<< orphan*/ * priv; } ;
typedef  TYPE_1__ WriterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int SECTION_FLAG_HAS_VARIABLE_FIELDS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(WriterContext *wctx, const char *key, const char *value)
{
    AVBPrint buf;
    XMLContext *xml = wctx->priv;
    const struct section *section = wctx->section[wctx->level];

    FUNC3(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);

    if (section->flags & SECTION_FLAG_HAS_VARIABLE_FIELDS) {
        FUNC0();
        FUNC4("<%s key=\"%s\"",
               section->element_name, FUNC5(&buf, key, wctx));
        FUNC1(&buf);
        FUNC4(" value=\"%s\"/>\n", FUNC5(&buf, value, wctx));
    } else {
        if (wctx->nb_item[wctx->level])
            FUNC4(" ");
        FUNC4("%s=\"%s\"", key, FUNC5(&buf, value, wctx));
    }

    FUNC2(&buf, NULL);
}