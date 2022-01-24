#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {int height; } ;
struct TYPE_6__ {int* linesize; void*** data; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void**,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (void**,void*,int) ; 

__attribute__((used)) static int FUNC13(AVCodecContext *avctx, AVFrame *pic,
                                   int depth, GetByteContext *gb)
{
    uint8_t *output, *output_end;
    int p1, p2, line=avctx->height - 1, pos=0, i;
    uint16_t pix16;
    uint32_t pix32;
    unsigned int width= FUNC0(pic->linesize[0]) / (depth >> 3);

    output     = pic->data[0] + (avctx->height - 1) * pic->linesize[0];
    output_end = output + FUNC0(pic->linesize[0]);

    while (FUNC5(gb) > 0) {
        p1 = FUNC6(gb);
        if(p1 == 0) { //Escape code
            p2 = FUNC4(gb);
            if(p2 == 0) { //End-of-line
                if (--line < 0) {
                    if (FUNC2(gb) == 1) { // end-of-picture
                        return 0;
                    } else {
                        FUNC1(avctx, AV_LOG_ERROR,
                               "Next line is beyond picture bounds (%d bytes left)\n",
                               FUNC5(gb));
                        return AVERROR_INVALIDDATA;
                    }
                }
                output = pic->data[0] + line * pic->linesize[0];
                output_end = output + FUNC0(pic->linesize[0]);
                pos = 0;
                continue;
            } else if(p2 == 1) { //End-of-picture
                return 0;
            } else if(p2 == 2) { //Skip
                p1 = FUNC4(gb);
                p2 = FUNC4(gb);
                line -= p2;
                pos += p1;
                if (line < 0 || pos >= width){
                    FUNC1(avctx, AV_LOG_ERROR, "Skip beyond picture bounds\n");
                    return -1;
                }
                output = pic->data[0] + line * pic->linesize[0] + pos * (depth >> 3);
                output_end = pic->data[0] + line * pic->linesize[0] + FUNC0(pic->linesize[0]);
                continue;
            }
            // Copy data
            if (output + p2 * (depth >> 3) > output_end) {
                FUNC11(gb, 2 * (depth >> 3));
                continue;
            } else if (FUNC5(gb) < p2 * (depth >> 3)) {
                FUNC1(avctx, AV_LOG_ERROR, "bytestream overrun\n");
                return AVERROR_INVALIDDATA;
            }

            if ((depth == 8) || (depth == 24)) {
                FUNC3(gb, output, p2 * (depth >> 3));
                output += p2 * (depth >> 3);

                // RLE8 copy is actually padded - and runs are not!
                if(depth == 8 && (p2 & 1)) {
                    FUNC11(gb, 1);
                }
            } else if (depth == 16) {
                for(i = 0; i < p2; i++) {
                    *(uint16_t*)output = FUNC8(gb);
                    output += 2;
                }
            } else if (depth == 32) {
                for(i = 0; i < p2; i++) {
                    *(uint32_t*)output = FUNC10(gb);
                    output += 4;
                }
            }
            pos += p2;
        } else { //run of pixels
            uint8_t pix[3]; //original pixel
            if (output + p1 * (depth >> 3) > output_end)
                continue;

            switch(depth){
            case  8:
                pix[0] = FUNC4(gb);
                FUNC12(output, pix[0], p1);
                output += p1;
                break;
            case 16:
                pix16  = FUNC7(gb);
                for(i = 0; i < p1; i++) {
                        *(uint16_t*)output = pix16;
                        output += 2;
                }
                break;
            case 24:
                pix[0] = FUNC4(gb);
                pix[1] = FUNC4(gb);
                pix[2] = FUNC4(gb);
                for(i = 0; i < p1; i++) {
                        *output++ = pix[0];
                        *output++ = pix[1];
                        *output++ = pix[2];
                }
                break;
            case 32:
                pix32  = FUNC9(gb);
                for(i = 0; i < p1; i++) {
                        *(uint32_t*)output = pix32;
                        output += 4;
                }
                break;
            }
            pos += p1;
        }
    }

    FUNC1(avctx, AV_LOG_WARNING, "MS RLE warning: no end-of-picture code\n");
    return 0;
}