#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_15__ {TYPE_2__* priv_data; } ;
struct TYPE_14__ {int version; int time_out; int compute_edt; TYPE_1__* display_list; } ;
struct TYPE_13__ {int region_id; struct TYPE_13__* next; void* y_pos; void* x_pos; } ;
typedef  TYPE_1__ DVBSubRegionDisplay ;
typedef  TYPE_2__ DVBSubContext ;
typedef  int /*<<< orphan*/  AVSubtitle ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* FUNC1 (int const*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx,
                                     const uint8_t *buf, int buf_size, AVSubtitle *sub, int *got_output)
{
    DVBSubContext *ctx = avctx->priv_data;
    DVBSubRegionDisplay *display;
    DVBSubRegionDisplay *tmp_display_list, **tmp_ptr;

    const uint8_t *buf_end = buf + buf_size;
    int region_id;
    int page_state;
    int timeout;
    int version;

    if (buf_size < 1)
        return AVERROR_INVALIDDATA;

    timeout = *buf++;
    version = ((*buf)>>4) & 15;
    page_state = ((*buf++) >> 2) & 3;

    if (ctx->version == version) {
        return 0;
    }

    ctx->time_out = timeout;
    ctx->version = version;

    FUNC8(avctx, "Page time out %ds, state %d\n", ctx->time_out, page_state);

    if(ctx->compute_edt == 1)
        FUNC9(avctx, sub, got_output);

    if (page_state == 1 || page_state == 2) {
        FUNC7(ctx);
        FUNC6(ctx);
        FUNC5(ctx);
    }

    tmp_display_list = ctx->display_list;
    ctx->display_list = NULL;

    while (buf + 5 < buf_end) {
        region_id = *buf++;
        buf += 1;

        display = ctx->display_list;
        while (display && display->region_id != region_id) {
            display = display->next;
        }
        if (display) {
            FUNC3(avctx, AV_LOG_ERROR, "duplicate region\n");
            break;
        }

        display = tmp_display_list;
        tmp_ptr = &tmp_display_list;

        while (display && display->region_id != region_id) {
            tmp_ptr = &display->next;
            display = display->next;
        }

        if (!display) {
            display = FUNC4(sizeof(DVBSubRegionDisplay));
            if (!display)
                return FUNC0(ENOMEM);
        }

        display->region_id = region_id;

        display->x_pos = FUNC1(buf);
        buf += 2;
        display->y_pos = FUNC1(buf);
        buf += 2;

        *tmp_ptr = display->next;

        display->next = ctx->display_list;
        ctx->display_list = display;

        FUNC8(avctx, "Region %d, (%d,%d)\n", region_id, display->x_pos, display->y_pos);
    }

    while (tmp_display_list) {
        display = tmp_display_list;

        tmp_display_list = display->next;

        FUNC2(&display);
    }

    return 0;
}