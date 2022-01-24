#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_6__ {scalar_t__ huffman; scalar_t__ chroma_format; int mb_x; int width; int /*<<< orphan*/  i_tex_bits; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 scalar_t__ CHROMA_420 ; 
 scalar_t__ CHROMA_444 ; 
 scalar_t__ HUFFMAN_TABLE_OPTIMAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

void FUNC3(MpegEncContext *s, int16_t block[12][64])
{
    int i;
    if (s->huffman == HUFFMAN_TABLE_OPTIMAL) {
        if (s->chroma_format == CHROMA_444) {
            FUNC2(s, block[0], 0);
            FUNC2(s, block[2], 2);
            FUNC2(s, block[4], 4);
            FUNC2(s, block[8], 8);
            FUNC2(s, block[5], 5);
            FUNC2(s, block[9], 9);

            if (16*s->mb_x+8 < s->width) {
                FUNC2(s, block[1], 1);
                FUNC2(s, block[3], 3);
                FUNC2(s, block[6], 6);
                FUNC2(s, block[10], 10);
                FUNC2(s, block[7], 7);
                FUNC2(s, block[11], 11);
            }
        } else {
            for(i=0;i<5;i++) {
                FUNC2(s, block[i], i);
            }
            if (s->chroma_format == CHROMA_420) {
                FUNC2(s, block[5], 5);
            } else {
                FUNC2(s, block[6], 6);
                FUNC2(s, block[5], 5);
                FUNC2(s, block[7], 7);
            }
        }
    } else {
        if (s->chroma_format == CHROMA_444) {
            FUNC0(s, block[0], 0);
            FUNC0(s, block[2], 2);
            FUNC0(s, block[4], 4);
            FUNC0(s, block[8], 8);
            FUNC0(s, block[5], 5);
            FUNC0(s, block[9], 9);

            if (16*s->mb_x+8 < s->width) {
                FUNC0(s, block[1], 1);
                FUNC0(s, block[3], 3);
                FUNC0(s, block[6], 6);
                FUNC0(s, block[10], 10);
                FUNC0(s, block[7], 7);
                FUNC0(s, block[11], 11);
            }
        } else {
            for(i=0;i<5;i++) {
                FUNC0(s, block[i], i);
            }
            if (s->chroma_format == CHROMA_420) {
                FUNC0(s, block[5], 5);
            } else {
                FUNC0(s, block[6], 6);
                FUNC0(s, block[5], 5);
                FUNC0(s, block[7], 7);
            }
        }

        s->i_tex_bits += FUNC1(s);
    }
}