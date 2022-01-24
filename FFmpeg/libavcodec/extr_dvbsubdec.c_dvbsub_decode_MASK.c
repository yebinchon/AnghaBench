#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_21__ {int debug; int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_20__ {int* data; int size; } ;
struct TYPE_19__ {int /*<<< orphan*/  pts; } ;
struct TYPE_18__ {int composition_id; int ancillary_id; int compute_edt; int /*<<< orphan*/  prev_start; } ;
typedef  TYPE_1__ DVBSubContext ;
typedef  TYPE_2__ AVSubtitle ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int FUNC0 (int const*) ; 
#define  DVBSUB_CLUT_SEGMENT 133 
#define  DVBSUB_DISPLAYDEFINITION_SEGMENT 132 
#define  DVBSUB_DISPLAY_SEGMENT 131 
#define  DVBSUB_OBJECT_SEGMENT 130 
#define  DVBSUB_PAGE_SEGMENT 129 
#define  DVBSUB_REGION_SEGMENT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FF_DEBUG_STARTCODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_4__*,int const*,int,TYPE_2__*,int*) ; 
 int FUNC5 (TYPE_4__*,int const*,int) ; 
 int FUNC6 (TYPE_4__*,int const*,int) ; 
 int FUNC7 (TYPE_4__*,int const*,int) ; 
 int FUNC8 (TYPE_4__*,int const*,int,TYPE_2__*,int*) ; 
 int FUNC9 (TYPE_4__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  int64_t ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx,
                         void *data, int *data_size,
                         AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    DVBSubContext *ctx = avctx->priv_data;
    AVSubtitle *sub = data;
    const uint8_t *p, *p_end;
    int segment_type;
    int page_id;
    int segment_length;
    int i;
    int ret = 0;
    int got_segment = 0;
    int got_dds = 0;

    FUNC10(avctx, "DVB sub packet:\n");

    for (i=0; i < buf_size; i++) {
        FUNC10(avctx, "%02x ", buf[i]);
        if (i % 16 == 15)
            FUNC10(avctx, "\n");
    }

    if (i % 16)
        FUNC10(avctx, "\n");

    if (buf_size <= 6 || *buf != 0x0f) {
        FUNC10(avctx, "incomplete or broken packet");
        return AVERROR_INVALIDDATA;
    }

    p = buf;
    p_end = buf + buf_size;

    while (p_end - p >= 6 && *p == 0x0f) {
        p += 1;
        segment_type = *p++;
        page_id = FUNC0(p);
        p += 2;
        segment_length = FUNC0(p);
        p += 2;

        if (avctx->debug & FF_DEBUG_STARTCODE) {
            FUNC2(avctx, AV_LOG_DEBUG, "segment_type:%d page_id:%d segment_length:%d\n", segment_type, page_id, segment_length);
        }

        if (p_end - p < segment_length) {
            FUNC10(avctx, "incomplete or broken packet");
            ret = -1;
            goto end;
        }

        if (page_id == ctx->composition_id || page_id == ctx->ancillary_id ||
            ctx->composition_id == -1 || ctx->ancillary_id == -1) {
            int ret = 0;
            switch (segment_type) {
            case DVBSUB_PAGE_SEGMENT:
                ret = FUNC8(avctx, p, segment_length, sub, data_size);
                got_segment |= 1;
                break;
            case DVBSUB_REGION_SEGMENT:
                ret = FUNC9(avctx, p, segment_length);
                got_segment |= 2;
                break;
            case DVBSUB_CLUT_SEGMENT:
                ret = FUNC5(avctx, p, segment_length);
                if (ret < 0) goto end;
                got_segment |= 4;
                break;
            case DVBSUB_OBJECT_SEGMENT:
                ret = FUNC7(avctx, p, segment_length);
                got_segment |= 8;
                break;
            case DVBSUB_DISPLAYDEFINITION_SEGMENT:
                ret = FUNC6(avctx, p,
                                                              segment_length);
                got_dds = 1;
                break;
            case DVBSUB_DISPLAY_SEGMENT:
                ret = FUNC4(avctx, p, segment_length, sub, data_size);
                if (got_segment == 15 && !got_dds && !avctx->width && !avctx->height) {
                    // Default from ETSI EN 300 743 V1.3.1 (7.2.1)
                    avctx->width  = 720;
                    avctx->height = 576;
                }
                got_segment |= 16;
                break;
            default:
                FUNC10(avctx, "Subtitling segment type 0x%x, page id %d, length %d\n",
                        segment_type, page_id, segment_length);
                break;
            }
            if (ret < 0)
                goto end;
        }

        p += segment_length;
    }
    // Some streams do not send a display segment but if we have all the other
    // segments then we need no further data.
    if (got_segment == 15) {
        FUNC2(avctx, AV_LOG_DEBUG, "Missing display_end_segment, emulating\n");
        FUNC4(avctx, p, 0, sub, data_size);
    }

end:
    if(ret < 0) {
        *data_size = 0;
        FUNC3(sub);
        return ret;
    } else {
        if(ctx->compute_edt == 1 )
            FUNC1(int64_t, ctx->prev_start, sub->pts);
    }

    return p - buf;
}