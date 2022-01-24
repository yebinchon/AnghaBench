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
typedef  int /*<<< orphan*/  block ;
struct TYPE_5__ {TYPE_1__* frame; } ;
struct TYPE_4__ {int* linesize; } ;
typedef  TYPE_2__ SeqVideoContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int* ff_log2_tab ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC3 (unsigned char const*,unsigned char const*,unsigned char*,int) ; 

__attribute__((used)) static const unsigned char *FUNC4(SeqVideoContext *seq,
                                           const unsigned char *src,
                                           const unsigned char *src_end,
                                           unsigned char *dst)
{
    const unsigned char *color_table;
    int b, i, len, bits;
    GetBitContext gb;
    unsigned char block[8 * 8];

    if (src_end - src < 1)
        return NULL;
    len = *src++;
    if (len & 0x80) {
        switch (len & 3) {
        case 1:
            src = FUNC3(src, src_end, block, sizeof(block));
            for (b = 0; b < 8; b++) {
                FUNC2(dst, &block[b * 8], 8);
                dst += seq->frame->linesize[0];
            }
            break;
        case 2:
            src = FUNC3(src, src_end, block, sizeof(block));
            for (i = 0; i < 8; i++) {
                for (b = 0; b < 8; b++)
                    dst[b * seq->frame->linesize[0]] = block[i * 8 + b];
                ++dst;
            }
            break;
        }
    } else {
        if (len <= 0)
            return NULL;
        bits = ff_log2_tab[len - 1] + 1;
        if (src_end - src < len + 8 * bits)
            return NULL;
        color_table = src;
        src += len;
        FUNC1(&gb, src, bits * 8 * 8); src += bits * 8;
        for (b = 0; b < 8; b++) {
            for (i = 0; i < 8; i++)
                dst[i] = color_table[FUNC0(&gb, bits)];
            dst += seq->frame->linesize[0];
        }
    }

    return src;
}