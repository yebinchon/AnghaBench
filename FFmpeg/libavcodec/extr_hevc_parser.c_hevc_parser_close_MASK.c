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
struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_6__ {TYPE_1__ pc; int /*<<< orphan*/  sei; int /*<<< orphan*/  pkt; int /*<<< orphan*/  ps; } ;
typedef  TYPE_2__ HEVCParserContext ;
typedef  TYPE_3__ AVCodecParserContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(AVCodecParserContext *s)
{
    HEVCParserContext *ctx = s->priv_data;

    FUNC2(&ctx->ps);
    FUNC1(&ctx->pkt);
    FUNC3(&ctx->sei);

    FUNC0(&ctx->pc.buffer);
}