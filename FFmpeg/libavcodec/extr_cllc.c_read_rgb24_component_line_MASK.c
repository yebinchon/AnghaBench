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
typedef  int uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_2__ VLC ;
struct TYPE_8__ {TYPE_1__* avctx; } ;
struct TYPE_6__ {int width; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ CLLCContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_BITS ; 
 int /*<<< orphan*/  VLC_DEPTH ; 
 int /*<<< orphan*/  bits ; 

__attribute__((used)) static int FUNC4(CLLCContext *ctx, GetBitContext *gb,
                                     int *top_left, VLC *vlc, uint8_t *outbuf)
{
    uint8_t *dst;
    int pred, code;
    int i;

    FUNC2(bits, gb);

    dst  = outbuf;
    pred = *top_left;

    /* Simultaneously read and restore the line */
    for (i = 0; i < ctx->avctx->width; i++) {
        FUNC3(bits, gb);
        FUNC1(code, bits, gb, vlc->table, VLC_BITS, VLC_DEPTH);

        pred  += code;
        dst[0] = pred;
        dst   += 3;
    }

    FUNC0(bits, gb);

    /* Stash the first pixel */
    *top_left = outbuf[0];

    return 0;
}