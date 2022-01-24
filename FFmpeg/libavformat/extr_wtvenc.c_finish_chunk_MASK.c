#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nb_index; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ MAX_NB_INDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    FUNC0(s);
    if (wctx->nb_index == MAX_NB_INDEX)
        FUNC1(s);
}