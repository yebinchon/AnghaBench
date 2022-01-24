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
typedef  size_t uint32_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {size_t width; size_t height; size_t* current; size_t* previous; } ;
typedef  TYPE_1__ Hnm4VideoContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(AVCodecContext *avctx, uint8_t *src,
                                  uint32_t size)
{
    Hnm4VideoContext *hnm = avctx->priv_data;
    GetByteContext gb;
    uint32_t writeoffset = 0, offset;
    uint8_t tag, count, previous, delta;

    FUNC3(&gb, src, size);

    while (FUNC6(&gb) < size) {
        count = FUNC4(&gb) & 0x3F;
        if (count == 0) {
            tag = FUNC1(&gb) & 0xC0;
            tag = tag >> 6;
            if (tag == 0) {
                writeoffset += FUNC1(&gb);
            } else if (tag == 1) {
                if (writeoffset + hnm->width >= hnm->width * hnm->height) {
                    FUNC0(avctx, AV_LOG_ERROR, "writeoffset out of bounds\n");
                    break;
                }
                hnm->current[writeoffset]              = FUNC1(&gb);
                hnm->current[writeoffset + hnm->width] = FUNC1(&gb);
                writeoffset++;
            } else if (tag == 2) {
                writeoffset += hnm->width;
            } else if (tag == 3) {
                break;
            }
            if (writeoffset > hnm->width * hnm->height) {
                FUNC0(avctx, AV_LOG_ERROR, "writeoffset out of bounds\n");
                break;
            }
        } else {
            delta    = FUNC4(&gb) & 0x80;
            previous = FUNC4(&gb) & 0x40;
            FUNC5(&gb, 1);

            offset  = writeoffset;
            offset += FUNC2(&gb);

            if (delta) {
                if (offset < 0x10000) {
                    FUNC0(avctx, AV_LOG_ERROR, "Attempting to read out of bounds\n");
                    break;
                }
                offset -= 0x10000;
            }

            if (offset + hnm->width + count >= hnm->width * hnm->height) {
                FUNC0(avctx, AV_LOG_ERROR, "Attempting to read out of bounds\n");
                break;
            } else if (writeoffset + hnm->width + count >= hnm->width * hnm->height) {
                FUNC0(avctx, AV_LOG_ERROR, "Attempting to write out of bounds\n");
                break;
            }

            if (previous) {
                while (count > 0) {
                    hnm->current[writeoffset]              = hnm->previous[offset];
                    hnm->current[writeoffset + hnm->width] = hnm->previous[offset + hnm->width];
                    writeoffset++;
                    offset++;
                    count--;
                }
            } else {
                while (count > 0) {
                    hnm->current[writeoffset]              = hnm->current[offset];
                    hnm->current[writeoffset + hnm->width] = hnm->current[offset + hnm->width];
                    writeoffset++;
                    offset++;
                    count--;
                }
            }
        }
    }
}