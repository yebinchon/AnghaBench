#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ frame_length_short; scalar_t__ sbr; scalar_t__ ps; } ;
typedef  TYPE_1__ MPEG4AudioConfig ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AACContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MAX_ELEM_ID ; 
 int /*<<< orphan*/  OC_GLOBAL_HDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  overread_err ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(AACContext *ac, AVCodecContext *avctx,
                                     GetBitContext *gb,
                                     MPEG4AudioConfig *m4ac,
                                     int channel_config)
{
    int ret, ep_config, res_flags;
    uint8_t layout_map[MAX_ELEM_ID*4][3];
    int tags = 0;
    const int ELDEXT_TERM = 0;

    m4ac->ps  = 0;
    m4ac->sbr = 0;
#if USE_FIXED
    if (get_bits1(gb)) { // frameLengthFlag
        avpriv_request_sample(avctx, "960/120 MDCT window");
        return AVERROR_PATCHWELCOME;
    }
#else
    m4ac->frame_length_short = FUNC4(gb);
#endif
    res_flags = FUNC3(gb, 3);
    if (res_flags) {
        FUNC1(avctx,
                                      "AAC data resilience (flags %x)",
                                      res_flags);
        return AVERROR_PATCHWELCOME;
    }

    if (FUNC4(gb)) { // ldSbrPresentFlag
        FUNC1(avctx,
                                      "Low Delay SBR");
        return AVERROR_PATCHWELCOME;
    }

    while (FUNC3(gb, 4) != ELDEXT_TERM) {
        int len = FUNC3(gb, 4);
        if (len == 15)
            len += FUNC3(gb, 8);
        if (len == 15 + 255)
            len += FUNC3(gb, 16);
        if (FUNC5(gb) < len * 8 + 4) {
            FUNC0(avctx, AV_LOG_ERROR, overread_err);
            return AVERROR_INVALIDDATA;
        }
        FUNC8(gb, 8 * len);
    }

    if ((ret = FUNC7(avctx, layout_map,
                                          &tags, channel_config)))
        return ret;

    if (ac && (ret = FUNC6(ac, layout_map, tags, OC_GLOBAL_HDR, 0)))
        return ret;

    ep_config = FUNC3(gb, 2);
    if (ep_config) {
        FUNC1(avctx,
                                      "epConfig %d", ep_config);
        return AVERROR_PATCHWELCOME;
    }
    return 0;
}