#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_15__ {int width; int height; TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ side_data_elems; int size; int /*<<< orphan*/  data; TYPE_1__* side_data; } ;
struct TYPE_13__ {TYPE_7__* frame; int /*<<< orphan*/  g; } ;
struct TYPE_12__ {scalar_t__ type; int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ BethsoftvidContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PKT_DATA_PALETTE ; 
#define  PALETTE_BLOCK 131 
#define  VIDEO_I_FRAME 130 
#define  VIDEO_P_FRAME 129 
#define  VIDEO_YOFF_P_FRAME 128 
 int FUNC0 (void*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx,
                              void *data, int *got_frame,
                              AVPacket *avpkt)
{
    BethsoftvidContext * vid = avctx->priv_data;
    char block_type;
    uint8_t * dst;
    uint8_t * frame_end;
    int remaining = avctx->width;          // number of bytes remaining on a line
    int wrap_to_next_line;
    int code, ret;
    int yoffset;

    if ((ret = FUNC8(avctx, vid->frame, 0)) < 0)
        return ret;
    wrap_to_next_line = vid->frame->linesize[0] - avctx->width;

    if (avpkt->side_data_elems > 0 &&
        avpkt->side_data[0].type == AV_PKT_DATA_PALETTE) {
        FUNC5(&vid->g, avpkt->side_data[0].data,
                         avpkt->side_data[0].size);
        if ((ret = FUNC10(vid)) < 0)
            return ret;
    }

    FUNC5(&vid->g, avpkt->data, avpkt->size);
    dst = vid->frame->data[0];
    frame_end = vid->frame->data[0] + vid->frame->linesize[0] * avctx->height;

    switch(block_type = FUNC3(&vid->g)){
        case PALETTE_BLOCK: {
            *got_frame = 0;
            if ((ret = FUNC10(vid)) < 0) {
                FUNC1(avctx, AV_LOG_ERROR, "error reading palette\n");
                return ret;
            }
            return FUNC7(&vid->g);
        }
        case VIDEO_YOFF_P_FRAME:
            yoffset = FUNC4(&vid->g);
            if(yoffset >= avctx->height)
                return AVERROR_INVALIDDATA;
            dst += vid->frame->linesize[0] * yoffset;
        case VIDEO_P_FRAME:
        case VIDEO_I_FRAME:
            break;
        default:
            return AVERROR_INVALIDDATA;
    }

    // main code
    while((code = FUNC3(&vid->g))){
        int length = code & 0x7f;

        // copy any bytes starting at the current position, and ending at the frame width
        while(length > remaining){
            if(code < 0x80)
                FUNC2(&vid->g, dst, remaining);
            else if(block_type == VIDEO_I_FRAME)
                FUNC9(dst, FUNC6(&vid->g), remaining);
            length -= remaining;      // decrement the number of bytes to be copied
            dst += remaining + wrap_to_next_line;    // skip over extra bytes at end of frame
            remaining = avctx->width;
            if(dst == frame_end)
                goto end;
        }

        // copy any remaining bytes after / if line overflows
        if(code < 0x80)
            FUNC2(&vid->g, dst, length);
        else if(block_type == VIDEO_I_FRAME)
            FUNC9(dst, FUNC3(&vid->g), length);
        remaining -= length;
        dst += length;
    }
    end:

    if ((ret = FUNC0(data, vid->frame)) < 0)
        return ret;

    *got_frame = 1;

    return avpkt->size;
}