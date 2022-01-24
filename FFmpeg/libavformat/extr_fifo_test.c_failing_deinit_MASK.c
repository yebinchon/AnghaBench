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
struct TYPE_4__ {int flush_count; int pts_written_nr; int /*<<< orphan*/ * pts_written; int /*<<< orphan*/  print_deinit_summary; } ;
typedef  TYPE_1__ FailingMuxerContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(AVFormatContext *avf)
{
    int i;
    FailingMuxerContext *ctx = avf->priv_data;

    if (!ctx->print_deinit_summary)
        return;

    FUNC0("flush count: %d\n", ctx->flush_count);
    FUNC0("pts seen nr: %d\n", ctx->pts_written_nr);
    FUNC0("pts seen: ");
    for (i = 0; i < ctx->pts_written_nr; ++i ) {
        FUNC0(i ? ",%d" : "%d", ctx->pts_written[i]);
    }
    FUNC0("\n");
}