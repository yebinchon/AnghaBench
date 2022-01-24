#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_9__ {int** data; int /*<<< orphan*/ * linesize; } ;
struct TYPE_8__ {int* new_video; TYPE_3__* avctx; } ;
typedef  TYPE_1__ CDXLVideoContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*) ; 

__attribute__((used)) static void FUNC3(CDXLVideoContext *c, AVFrame *frame)
{
    AVCodecContext *avctx = c->avctx;
    uint32_t new_palette[64], r, g, b;
    uint8_t *ptr, *out, index, op;
    int x, y;

    ptr = c->new_video;
    out = frame->data[0];

    FUNC2(c, new_palette);
    FUNC1(c, avctx->width, c->new_video);

    for (y = 0; y < avctx->height; y++) {
        r = new_palette[0] & 0xFF0000;
        g = new_palette[0] & 0xFF00;
        b = new_palette[0] & 0xFF;
        for (x = 0; x < avctx->width; x++) {
            index  = *ptr++;
            op     = index >> 6;
            index &= 63;
            switch (op) {
            case 0:
                r = new_palette[index] & 0xFF0000;
                g = new_palette[index] & 0xFF00;
                b = new_palette[index] & 0xFF;
                break;
            case 1:
                b = (index <<  2) | (b & 3);
                break;
            case 2:
                r = (index << 18) | (r & (3 << 16));
                break;
            case 3:
                g = (index << 10) | (g & (3 << 8));
                break;
            }
            FUNC0(out + x * 3, r | g | b);
        }
        out += frame->linesize[0];
    }
}