#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  avctx; } ;
struct LATMContext {int audio_mux_version_A; int frame_length_type; int frame_length; TYPE_1__ aac_ctx; } ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct LATMContext*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct LATMContext *latmctx,
                                  GetBitContext *gb)
{
    int ret, audio_mux_version = FUNC1(gb, 1);

    latmctx->audio_mux_version_A = 0;
    if (audio_mux_version)
        latmctx->audio_mux_version_A = FUNC1(gb, 1);

    if (!latmctx->audio_mux_version_A) {

        if (audio_mux_version)
            FUNC4(gb);                 // taraFullness

        FUNC5(gb, 1);                       // allStreamSameTimeFraming
        FUNC5(gb, 6);                       // numSubFrames
        // numPrograms
        if (FUNC1(gb, 4)) {                  // numPrograms
            FUNC0(latmctx->aac_ctx.avctx, "Multiple programs");
            return AVERROR_PATCHWELCOME;
        }

        // for each program (which there is only one in DVB)

        // for each layer (which there is only one in DVB)
        if (FUNC1(gb, 3)) {                   // numLayer
            FUNC0(latmctx->aac_ctx.avctx, "Multiple layers");
            return AVERROR_PATCHWELCOME;
        }

        // for all but first stream: use_same_config = get_bits(gb, 1);
        if (!audio_mux_version) {
            if ((ret = FUNC3(latmctx, gb, 0)) < 0)
                return ret;
        } else {
            int ascLen = FUNC4(gb);
            if ((ret = FUNC3(latmctx, gb, ascLen)) < 0)
                return ret;
        }

        latmctx->frame_length_type = FUNC1(gb, 3);
        switch (latmctx->frame_length_type) {
        case 0:
            FUNC5(gb, 8);       // latmBufferFullness
            break;
        case 1:
            latmctx->frame_length = FUNC1(gb, 9);
            break;
        case 3:
        case 4:
        case 5:
            FUNC5(gb, 6);       // CELP frame length table index
            break;
        case 6:
        case 7:
            FUNC5(gb, 1);       // HVXC frame length table index
            break;
        }

        if (FUNC1(gb, 1)) {                  // other data
            if (audio_mux_version) {
                FUNC4(gb);             // other_data_bits
            } else {
                int esc;
                do {
                    if (FUNC2(gb) < 9)
                        return AVERROR_INVALIDDATA;
                    esc = FUNC1(gb, 1);
                    FUNC5(gb, 8);
                } while (esc);
            }
        }

        if (FUNC1(gb, 1))                     // crc present
            FUNC5(gb, 8);                    // config_crc
    }

    return 0;
}