#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t level; scalar_t__* nb_item; } ;
typedef  TYPE_1__ WriterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(WriterContext *wctx, const char *key, long long int value)
{
    if (wctx->nb_item[wctx->level])
        FUNC0(" ");
    FUNC0("%s=\"%lld\"", key, value);
}