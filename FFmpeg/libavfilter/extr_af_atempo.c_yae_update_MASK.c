#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int window; scalar_t__* origin; } ;
struct TYPE_8__ {TYPE_3__* priv; } ;
struct TYPE_7__ {scalar_t__* position; } ;
typedef  TYPE_1__ AudioFragment ;
typedef  TYPE_2__ AVFilterContext ;
typedef  TYPE_3__ ATempoContext ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC1(AVFilterContext *ctx)
{
    const AudioFragment *prev;
    ATempoContext *atempo = ctx->priv;

    prev = FUNC0(atempo);
    atempo->origin[0] = prev->position[0] + atempo->window / 2;
    atempo->origin[1] = prev->position[1] + atempo->window / 2;
    return 0;
}