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
struct TYPE_7__ {int /*<<< orphan*/ * refs; int /*<<< orphan*/ * frames; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef  TYPE_2__ VP9Context ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(AVCodecContext *avctx)
{
    VP9Context *s = avctx->priv_data;
    int i;

    for (i = 0; i < 3; i++)
        FUNC1(avctx, &s->s.frames[i]);
    for (i = 0; i < 8; i++)
        FUNC0(avctx, &s->s.refs[i]);
}