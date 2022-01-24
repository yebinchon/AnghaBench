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
typedef  unsigned int uint32_t ;
struct TYPE_5__ {int bits_per_coded_sample; unsigned int width; TYPE_1__* priv_data; } ;
struct TYPE_4__ {unsigned int bpp; } ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  TYPE_1__ MSCCContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  SEEK_SET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, GetByteContext *gb, PutByteContext *pb)
{
    MSCCContext *s = avctx->priv_data;
    unsigned x = 0, y = 0;

    while (FUNC1(gb) > 0) {
        uint32_t fill;
        int j;
        unsigned run = FUNC0(gb);

        if (run) {
            switch (avctx->bits_per_coded_sample) {
            case 8:
                fill = FUNC0(gb);
                break;
            case 16:
                fill = FUNC2(gb);
                break;
            case 24:
                fill = FUNC3(gb);
                break;
            case 32:
                fill = FUNC4(gb);
                break;
            }

            for (j = 0; j < run; j++) {
                switch (avctx->bits_per_coded_sample) {
                case 8:
                    FUNC5(pb, fill);
                    break;
                case 16:
                    FUNC6(pb, fill);
                    break;
                case 24:
                    FUNC7(pb, fill);
                    break;
                case 32:
                    FUNC8(pb, fill);
                    break;
                }
            }
            x += run;
        } else {
            unsigned copy = FUNC0(gb);

            if (copy == 0) {
                x = 0;
                y++;
                FUNC9(pb, y * avctx->width * s->bpp, SEEK_SET);
            } else if (copy == 1) {
                return 0;
            } else if (copy == 2) {

                x += FUNC0(gb);
                y += FUNC0(gb);

                FUNC9(pb, y * avctx->width * s->bpp + x * s->bpp, SEEK_SET);
            } else {
                for (j = 0; j < copy; j++) {
                    switch (avctx->bits_per_coded_sample) {
                    case 8:
                        FUNC5(pb, FUNC0(gb));
                        break;
                    case 16:
                        FUNC6(pb, FUNC2(gb));
                        break;
                    case 24:
                        FUNC7(pb, FUNC3(gb));
                        break;
                    case 32:
                        FUNC8(pb, FUNC4(gb));
                        break;
                    }
                }

                if (s->bpp == 1 && (copy & 1))
                    FUNC10(gb, 1);
                x += copy;
            }
        }
    }

    return AVERROR_INVALIDDATA;
}