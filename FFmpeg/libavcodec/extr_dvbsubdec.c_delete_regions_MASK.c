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
struct TYPE_8__ {TYPE_1__* region_list; } ;
struct TYPE_7__ {struct TYPE_7__* pbuf; struct TYPE_7__* next; } ;
typedef  TYPE_1__ DVBSubRegion ;
typedef  TYPE_2__ DVBSubContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(DVBSubContext *ctx)
{
    while (ctx->region_list) {
        DVBSubRegion *region = ctx->region_list;

        ctx->region_list = region->next;

        FUNC1(ctx, region);

        FUNC0(&region->pbuf);
        FUNC0(&region);
    }
}