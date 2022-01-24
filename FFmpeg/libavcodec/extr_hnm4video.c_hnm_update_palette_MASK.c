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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int version; int* palette; } ;
typedef  TYPE_1__ Hnm4VideoContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(AVCodecContext *avctx, uint8_t *src,
                               uint32_t size)
{
    Hnm4VideoContext *hnm = avctx->priv_data;
    GetByteContext gb;
    uint8_t start, writeoffset;
    uint16_t count;
    int eight_bit_colors;

    eight_bit_colors = src[7] & 0x80 && hnm->version == 0x4a;

    // skip first 8 bytes
    FUNC2(&gb, src + 8, size - 8);

    while (FUNC3(&gb) < size - 8) {
        start = FUNC1(&gb);
        count = FUNC1(&gb);
        if (start == 255 && count == 255)
            break;
        if (count == 0)
            count = 256;
        writeoffset = start;
        while (count > 0) {
            hnm->palette[writeoffset] = FUNC0(&gb);
            if (!eight_bit_colors)
                hnm->palette[writeoffset] <<= 2;
            hnm->palette[writeoffset] |= (0xFFU << 24);
            count--;
            writeoffset++;
        }
    }
}