#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t level; TYPE_1__* section_pbuf; TYPE_3__* priv; } ;
typedef  TYPE_2__ WriterContext ;
struct TYPE_7__ {int /*<<< orphan*/  sep; } ;
struct TYPE_5__ {char* str; } ;
typedef  TYPE_3__ FlatContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(WriterContext *wctx, const char *key, const char *value)
{
    FlatContext *flat = wctx->priv;
    AVBPrint buf;

    FUNC5("%s", wctx->section_pbuf[wctx->level].str);
    FUNC2(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
    FUNC5("%s=", FUNC3(&buf, key, flat->sep));
    FUNC0(&buf);
    FUNC5("\"%s\"\n", FUNC4(&buf, value));
    FUNC1(&buf, NULL);
}