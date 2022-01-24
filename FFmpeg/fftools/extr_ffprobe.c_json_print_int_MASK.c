#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct section {scalar_t__ id; } ;
struct TYPE_5__ {int level; scalar_t__* nb_item; struct section** section; TYPE_2__* priv; } ;
typedef  TYPE_1__ WriterContext ;
struct TYPE_6__ {char* item_sep; int /*<<< orphan*/  compact; } ;
typedef  TYPE_2__ JSONContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ SECTION_ID_PACKETS_AND_FRAMES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static void FUNC5(WriterContext *wctx, const char *key, long long int value)
{
    JSONContext *json = wctx->priv;
    const struct section *parent_section = wctx->level ?
        wctx->section[wctx->level-1] : NULL;
    AVBPrint buf;

    if (wctx->nb_item[wctx->level] || (parent_section && parent_section->id == SECTION_ID_PACKETS_AND_FRAMES))
        FUNC4("%s", json->item_sep);
    if (!json->compact)
        FUNC0();

    FUNC2(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
    FUNC4("\"%s\": %lld", FUNC3(&buf, key, wctx), value);
    FUNC1(&buf, NULL);
}