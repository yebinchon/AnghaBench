#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dshow_ctx {TYPE_1__* pktl; scalar_t__* event; scalar_t__ mutex; int /*<<< orphan*/ * device_unique_name; int /*<<< orphan*/ * device_name; int /*<<< orphan*/ ** device_filter; scalar_t__* device_pin; scalar_t__* capture_filter; scalar_t__* capture_pin; scalar_t__ graph; scalar_t__ media_event; scalar_t__ control; } ;
struct TYPE_6__ {struct dshow_ctx* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkt; struct TYPE_5__* next; } ;
typedef  int /*<<< orphan*/  IEnumFilters ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  TYPE_1__ AVPacketList ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 size_t AudioDevice ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int S_OK ; 
 size_t VideoDevice ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

__attribute__((used)) static int
FUNC18(AVFormatContext *s)
{
    struct dshow_ctx *ctx = s->priv_data;
    AVPacketList *pktl;

    if (ctx->control) {
        FUNC10(ctx->control);
        FUNC9(ctx->control);
    }

    if (ctx->media_event)
        FUNC11(ctx->media_event);

    if (ctx->graph) {
        IEnumFilters *fenum;
        int r;
        r = FUNC6(ctx->graph, &fenum);
        if (r == S_OK) {
            IBaseFilter *f;
            FUNC5(fenum);
            while (FUNC3(fenum, 1, &f, NULL) == S_OK) {
                if (FUNC8(ctx->graph, f) == S_OK)
                    FUNC5(fenum); /* When a filter is removed,
                                                * the list must be reset. */
                FUNC2(f);
            }
            FUNC4(fenum);
        }
        FUNC7(ctx->graph);
    }

    if (ctx->capture_pin[VideoDevice])
        FUNC17(ctx->capture_pin[VideoDevice]);
    if (ctx->capture_pin[AudioDevice])
        FUNC17(ctx->capture_pin[AudioDevice]);
    if (ctx->capture_filter[VideoDevice])
        FUNC16(ctx->capture_filter[VideoDevice]);
    if (ctx->capture_filter[AudioDevice])
        FUNC16(ctx->capture_filter[AudioDevice]);

    if (ctx->device_pin[VideoDevice])
        FUNC12(ctx->device_pin[VideoDevice]);
    if (ctx->device_pin[AudioDevice])
        FUNC12(ctx->device_pin[AudioDevice]);
    if (ctx->device_filter[VideoDevice])
        FUNC2(ctx->device_filter[VideoDevice]);
    if (ctx->device_filter[AudioDevice])
        FUNC2(ctx->device_filter[AudioDevice]);

    FUNC14(&ctx->device_name[0]);
    FUNC14(&ctx->device_name[1]);
    FUNC14(&ctx->device_unique_name[0]);
    FUNC14(&ctx->device_unique_name[1]);

    if(ctx->mutex)
        FUNC0(ctx->mutex);
    if(ctx->event[0])
        FUNC0(ctx->event[0]);
    if(ctx->event[1])
        FUNC0(ctx->event[1]);

    pktl = ctx->pktl;
    while (pktl) {
        AVPacketList *next = pktl->next;
        FUNC15(&pktl->pkt);
        FUNC13(pktl);
        pktl = next;
    }

    FUNC1();

    return 0;
}