#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {long long output_size; int* output; TYPE_5__ vlc; int /*<<< orphan*/  padded_output_size; TYPE_4__ gbyte; int /*<<< orphan*/  gb; } ;
struct TYPE_6__ {long long width; long long height; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ AGMContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int**,int /*<<< orphan*/ *,long long) ; 
 int FUNC2 (int*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 long long FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, int header, int size)
{
    AGMContext *s = avctx->priv_data;
    GetBitContext *gb = &s->gb;
    uint8_t lens[256];
    int ret, x, len;

    if ((ret = FUNC8(gb, s->gbyte.buffer,
                              FUNC3(&s->gbyte))) < 0)
        return ret;

    s->output_size = FUNC6(gb, 32);

    if (s->output_size > avctx->width * avctx->height * 9LL + 10000)
        return AVERROR_INVALIDDATA;

    FUNC1(&s->output, &s->padded_output_size, s->output_size);
    if (!s->output)
        return FUNC0(ENOMEM);

    x = FUNC4(gb, 1);
    len = 4 + FUNC4(gb, 1);
    if (x) {
        int cb[8] = { 0 };
        int count = FUNC4(gb, 3) + 1;

        for (int i = 0; i < count; i++)
            cb[i] = FUNC4(gb, len);

        for (int i = 0; i < 256; i++) {
            int idx = FUNC4(gb, 3);
            lens[i] = cb[idx];
        }
    } else {
        for (int i = 0; i < 256; i++)
            lens[i] = FUNC4(gb, len);
    }

    if ((ret = FUNC2(lens, &s->vlc)) < 0)
        return ret;

    x = 0;
    while (FUNC5(gb) > 0 && x < s->output_size) {
        int val = FUNC7(gb, s->vlc.table, s->vlc.bits, 3);
        if (val < 0)
            return AVERROR_INVALIDDATA;
        s->output[x++] = val;
    }

    return 0;
}