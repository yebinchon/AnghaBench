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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int width; int height; int* current; int* previous; } ;
typedef  TYPE_1__ Hnm4VideoContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, uint8_t *src, uint32_t size)
{
    Hnm4VideoContext *hnm = avctx->priv_data;
    GetByteContext gb;
    uint32_t writeoffset = 0;
    int count, left, offset;
    uint8_t tag, previous, backline, backward, swap;

    FUNC3(&gb, src, size);

    while (FUNC6(&gb) < size) {
        count = FUNC4(&gb) & 0x1F;
        if (count == 0) {
            tag = FUNC1(&gb) & 0xE0;
            tag = tag >> 5;

            if (tag == 0) {
                if (writeoffset + 2 > hnm->width * hnm->height) {
                    FUNC0(avctx, AV_LOG_ERROR, "writeoffset out of bounds\n");
                    return AVERROR_INVALIDDATA;
                }
                hnm->current[writeoffset++] = FUNC1(&gb);
                hnm->current[writeoffset++] = FUNC1(&gb);
            } else if (tag == 1) {
                writeoffset += FUNC1(&gb) * 2;
            } else if (tag == 2) {
                count = FUNC2(&gb);
                count *= 2;
                writeoffset += count;
            } else if (tag == 3) {
                count = FUNC1(&gb) * 2;
                if (writeoffset + count > hnm->width * hnm->height) {
                    FUNC0(avctx, AV_LOG_ERROR, "writeoffset out of bounds\n");
                    return AVERROR_INVALIDDATA;
                }
                while (count > 0) {
                    hnm->current[writeoffset++] = FUNC4(&gb);
                    count--;
                }
                FUNC5(&gb, 1);
            } else {
                break;
            }
            if (writeoffset > hnm->width * hnm->height) {
                FUNC0(avctx, AV_LOG_ERROR, "writeoffset out of bounds\n");
                return AVERROR_INVALIDDATA;
            }
        } else {
            previous = FUNC4(&gb) & 0x20;
            backline = FUNC4(&gb) & 0x40;
            backward = FUNC4(&gb) & 0x80;
            FUNC5(&gb, 1);
            swap   = FUNC4(&gb) & 0x01;
            offset = FUNC2(&gb);
            offset = (offset >> 1) & 0x7FFF;
            offset = writeoffset + (offset * 2) - 0x8000;

            left = count;

            if (!backward && offset + 2*count > hnm->width * hnm->height) {
                FUNC0(avctx, AV_LOG_ERROR, "Attempting to read out of bounds\n");
                return AVERROR_INVALIDDATA;
            } else if (backward && offset + 1 >= hnm->width * hnm->height) {
                FUNC0(avctx, AV_LOG_ERROR, "Attempting to read out of bounds\n");
                return AVERROR_INVALIDDATA;
            } else if (writeoffset + 2*count > hnm->width * hnm->height) {
                FUNC0(avctx, AV_LOG_ERROR,
                       "Attempting to write out of bounds\n");
                return AVERROR_INVALIDDATA;

            }
            if(backward) {
                if (offset < (!!backline)*(2 * hnm->width - 1) + 2*(left-1)) {
                    FUNC0(avctx, AV_LOG_ERROR, "Attempting to read out of bounds\n");
                    return AVERROR_INVALIDDATA;
                }
            } else {
                if (offset < (!!backline)*(2 * hnm->width - 1)) {
                    FUNC0(avctx, AV_LOG_ERROR, "Attempting to read out of bounds\n");
                    return AVERROR_INVALIDDATA;
                }
            }

            if (previous) {
                while (left > 0) {
                    if (backline) {
                        hnm->current[writeoffset++] = hnm->previous[offset - (2 * hnm->width) + 1];
                        hnm->current[writeoffset++] = hnm->previous[offset++];
                        offset++;
                    } else {
                        hnm->current[writeoffset++] = hnm->previous[offset++];
                        hnm->current[writeoffset++] = hnm->previous[offset++];
                    }
                    if (backward)
                        offset -= 4;
                    left--;
                }
            } else {
                while (left > 0) {
                    if (backline) {
                        hnm->current[writeoffset++] = hnm->current[offset - (2 * hnm->width) + 1];
                        hnm->current[writeoffset++] = hnm->current[offset++];
                        offset++;
                    } else {
                        hnm->current[writeoffset++] = hnm->current[offset++];
                        hnm->current[writeoffset++] = hnm->current[offset++];
                    }
                    if (backward)
                        offset -= 4;
                    left--;
                }
            }

            if (swap) {
                left         = count;
                writeoffset -= count * 2;
                while (left > 0) {
                    swap = hnm->current[writeoffset];
                    hnm->current[writeoffset] = hnm->current[writeoffset + 1];
                    hnm->current[writeoffset + 1] = swap;
                    left--;
                    writeoffset += 2;
                }
            }
        }
    }
    return 0;
}