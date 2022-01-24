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
struct TYPE_8__ {struct TYPE_8__* priv; TYPE_1__* writer; int /*<<< orphan*/ * section_pbuf; } ;
typedef  TYPE_2__ WriterContext ;
struct TYPE_7__ {scalar_t__ priv_class; int /*<<< orphan*/  (* uninit ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int SECTION_MAX_NB_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(WriterContext **wctx)
{
    int i;

    if (!*wctx)
        return;

    if ((*wctx)->writer->uninit)
        (*wctx)->writer->uninit(*wctx);
    for (i = 0; i < SECTION_MAX_NB_LEVELS; i++)
        FUNC0(&(*wctx)->section_pbuf[i], NULL);
    if ((*wctx)->writer->priv_class)
        FUNC2((*wctx)->priv);
    FUNC1(&((*wctx)->priv));
    FUNC2(*wctx);
    FUNC1(wctx);
}