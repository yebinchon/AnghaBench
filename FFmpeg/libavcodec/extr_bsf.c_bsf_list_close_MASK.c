#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int nb_bsfs; int /*<<< orphan*/ * item_name; int /*<<< orphan*/ * bsfs; } ;
typedef  TYPE_1__ BSFListContext ;
typedef  TYPE_2__ AVBSFContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC2(AVBSFContext *bsf)
{
    BSFListContext *lst = bsf->priv_data;
    int i;

    for (i = 0; i < lst->nb_bsfs; ++i)
        FUNC0(&lst->bsfs[i]);
    FUNC1(&lst->bsfs);
    FUNC1(&lst->item_name);
}