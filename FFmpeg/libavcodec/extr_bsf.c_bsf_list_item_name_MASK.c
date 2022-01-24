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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {int nb_bsfs; char const* item_name; TYPE_2__** bsfs; } ;
struct TYPE_6__ {TYPE_1__* filter; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ BSFListContext ;
typedef  TYPE_4__ AVBSFContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static const char *FUNC3(void *ctx)
{
    static const char *null_filter_name = "null";
    AVBSFContext *bsf_ctx = ctx;
    BSFListContext *lst = bsf_ctx->priv_data;

    if (!lst->nb_bsfs)
        return null_filter_name;

    if (!lst->item_name) {
        int i;
        AVBPrint bp;
        FUNC1(&bp, 16, 128);

        FUNC2(&bp, "bsf_list(");
        for (i = 0; i < lst->nb_bsfs; i++)
            FUNC2(&bp, i ? ",%s" : "%s", lst->bsfs[i]->filter->name);
        FUNC2(&bp, ")");

        FUNC0(&bp, &lst->item_name);
    }

    return lst->item_name;
}