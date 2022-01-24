#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/  const** data; } ;
struct TYPE_6__ {scalar_t__ big_endian; } ;
typedef  TYPE_1__ DPXContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(AVCodecContext *avctx, const AVFrame *pic, uint8_t *dst)
{
    DPXContext *s = avctx->priv_data;
    const uint8_t *src[3] = {pic->data[0], pic->data[1], pic->data[2]};
    int x, y, i;

    for (y = 0; y < avctx->height; y++) {
        for (x = 0; x < avctx->width; x++) {
            int value;
            if (s->big_endian) {
                value = (FUNC0(src[0] + 2*x) << 12)
                      | (FUNC0(src[1] + 2*x) << 2)
                      | ((unsigned)FUNC0(src[2] + 2*x) << 22);
            } else {
                value = (FUNC1(src[0] + 2*x) << 12)
                      | (FUNC1(src[1] + 2*x) << 2)
                      | ((unsigned)FUNC1(src[2] + 2*x) << 22);
            }
            FUNC2(dst, value);
            dst += 4;
        }
        for (i = 0; i < 3; i++)
            src[i] += pic->linesize[i];
    }
}