#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_13__ {int nb_streams; int /*<<< orphan*/  url; int /*<<< orphan*/  interrupt_callback; } ;
struct TYPE_12__ {int ost_index; int header_written; TYPE_8__* ctx; int /*<<< orphan*/  opts; } ;
struct TYPE_11__ {int /*<<< orphan*/  muxing_queue; TYPE_1__* st; int /*<<< orphan*/  mux_timebase; int /*<<< orphan*/  initialized; } ;
struct TYPE_10__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ OutputFile ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  int_cb ; 
 TYPE_2__** output_streams ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ sdp_filename ; 
 scalar_t__ want_sdp ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC8(OutputFile *of, int file_index)
{
    int ret, i;

    for (i = 0; i < of->ctx->nb_streams; i++) {
        OutputStream *ost = output_streams[of->ost_index + i];
        if (!ost->initialized)
            return 0;
    }

    of->ctx->interrupt_callback = int_cb;

    ret = FUNC5(of->ctx, &of->opts);
    if (ret < 0) {
        FUNC4(NULL, AV_LOG_ERROR,
               "Could not write header for output file #%d "
               "(incorrect codec parameters ?): %s\n",
               file_index, FUNC1(ret));
        return ret;
    }
    //assert_avoptions(of->opts);
    of->header_written = 1;

    FUNC0(of->ctx, file_index, of->ctx->url, 1);

    if (sdp_filename || want_sdp)
        FUNC6();

    /* flush the muxing queues */
    for (i = 0; i < of->ctx->nb_streams; i++) {
        OutputStream *ost = output_streams[of->ost_index + i];

        /* try to improve muxing time_base (only possible if nothing has been written yet) */
        if (!FUNC3(ost->muxing_queue))
            ost->mux_timebase = ost->st->time_base;

        while (FUNC3(ost->muxing_queue)) {
            AVPacket pkt;
            FUNC2(ost->muxing_queue, &pkt, sizeof(pkt), NULL);
            FUNC7(of, &pkt, ost, 1);
        }
    }

    return 0;
}