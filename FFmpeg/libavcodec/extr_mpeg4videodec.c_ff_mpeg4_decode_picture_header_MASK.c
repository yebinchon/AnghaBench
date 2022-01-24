#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_29__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {int size_in_bits; } ;
struct TYPE_32__ {int studio_profile; scalar_t__ codec_tag; int low_delay; TYPE_29__* avctx; } ;
struct TYPE_34__ {scalar_t__ divx_version; scalar_t__ xvid_build; TYPE_1__ m; } ;
struct TYPE_33__ {int bits_per_raw_sample; int debug; int profile; int level; int flags; int has_b_frames; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  TYPE_2__ Mpeg4DecContext ;
typedef  TYPE_3__ GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AV_CODEC_FLAG_LOW_DELAY ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (char*) ; 
 int FF_DEBUG_STARTCODE ; 
 int FF_PROFILE_MPEG4_SIMPLE_STUDIO ; 
 int FRAME_SKIPPED ; 
 unsigned int GOP_STARTCODE ; 
 unsigned int USER_DATA_STARTCODE ; 
 unsigned int VISUAL_OBJ_STARTCODE ; 
 unsigned int VOP_STARTCODE ; 
 unsigned int VOS_STARTCODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_29__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_29__*,char*) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*,int) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_3__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int FUNC16 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int) ; 

int FUNC18(Mpeg4DecContext *ctx, GetBitContext *gb, int header)
{
    MpegEncContext *s = &ctx->m;
    unsigned startcode, v;
    int ret;
    int vol = 0;

    /* search next start code */
    FUNC1(gb);

    // If we have not switched to studio profile than we also did not switch bps
    // that means something else (like a previous instance) outside set bps which
    // would be inconsistant with the currect state, thus reset it
    if (!s->studio_profile && s->avctx->bits_per_raw_sample != 8)
        s->avctx->bits_per_raw_sample = 0;

    if (s->codec_tag == FUNC0("WV1F") && FUNC16(gb, 24) == 0x575630) {
        FUNC17(gb, 24);
        if (FUNC10(gb, 8) == 0xF0)
            goto end;
    }

    startcode = 0xff;
    for (;;) {
        if (FUNC11(gb) >= gb->size_in_bits) {
            if (gb->size_in_bits == 8 &&
                (ctx->divx_version >= 0 || ctx->xvid_build >= 0) || s->codec_tag == FUNC0("QMP4")) {
                FUNC2(s->avctx, AV_LOG_VERBOSE, "frame skip %d\n", gb->size_in_bits);
                return FRAME_SKIPPED;  // divx bug
            } else if (header && FUNC11(gb) == gb->size_in_bits) {
                return 0; // ordinary return value for parsing of extradata
            } else
                return AVERROR_INVALIDDATA;  // end of stream
        }

        /* use the bits after the test */
        v = FUNC10(gb, 8);
        startcode = ((startcode << 8) | v) & 0xffffffff;

        if ((startcode & 0xFFFFFF00) != 0x100)
            continue;  // no startcode

        if (s->avctx->debug & FF_DEBUG_STARTCODE) {
            FUNC2(s->avctx, AV_LOG_DEBUG, "startcode: %3X ", startcode);
            if (startcode <= 0x11F)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Video Object Start");
            else if (startcode <= 0x12F)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Video Object Layer Start");
            else if (startcode <= 0x13F)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Reserved");
            else if (startcode <= 0x15F)
                FUNC2(s->avctx, AV_LOG_DEBUG, "FGS bp start");
            else if (startcode <= 0x1AF)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Reserved");
            else if (startcode == 0x1B0)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Visual Object Seq Start");
            else if (startcode == 0x1B1)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Visual Object Seq End");
            else if (startcode == 0x1B2)
                FUNC2(s->avctx, AV_LOG_DEBUG, "User Data");
            else if (startcode == 0x1B3)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Group of VOP start");
            else if (startcode == 0x1B4)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Video Session Error");
            else if (startcode == 0x1B5)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Visual Object Start");
            else if (startcode == 0x1B6)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Video Object Plane start");
            else if (startcode == 0x1B7)
                FUNC2(s->avctx, AV_LOG_DEBUG, "slice start");
            else if (startcode == 0x1B8)
                FUNC2(s->avctx, AV_LOG_DEBUG, "extension start");
            else if (startcode == 0x1B9)
                FUNC2(s->avctx, AV_LOG_DEBUG, "fgs start");
            else if (startcode == 0x1BA)
                FUNC2(s->avctx, AV_LOG_DEBUG, "FBA Object start");
            else if (startcode == 0x1BB)
                FUNC2(s->avctx, AV_LOG_DEBUG, "FBA Object Plane start");
            else if (startcode == 0x1BC)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Mesh Object start");
            else if (startcode == 0x1BD)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Mesh Object Plane start");
            else if (startcode == 0x1BE)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Still Texture Object start");
            else if (startcode == 0x1BF)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Texture Spatial Layer start");
            else if (startcode == 0x1C0)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Texture SNR Layer start");
            else if (startcode == 0x1C1)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Texture Tile start");
            else if (startcode == 0x1C2)
                FUNC2(s->avctx, AV_LOG_DEBUG, "Texture Shape Layer start");
            else if (startcode == 0x1C3)
                FUNC2(s->avctx, AV_LOG_DEBUG, "stuffing start");
            else if (startcode <= 0x1C5)
                FUNC2(s->avctx, AV_LOG_DEBUG, "reserved");
            else if (startcode <= 0x1FF)
                FUNC2(s->avctx, AV_LOG_DEBUG, "System start");
            FUNC2(s->avctx, AV_LOG_DEBUG, " at %d\n", FUNC11(gb));
        }

        if (startcode >= 0x120 && startcode <= 0x12F) {
            if (vol) {
                FUNC2(s->avctx, AV_LOG_WARNING, "Ignoring multiple VOL headers\n");
                continue;
            }
            vol++;
            if ((ret = FUNC7(ctx, gb)) < 0)
                return ret;
        } else if (startcode == USER_DATA_STARTCODE) {
            FUNC6(ctx, gb);
        } else if (startcode == GOP_STARTCODE) {
            FUNC12(s, gb);
        } else if (startcode == VOS_STARTCODE) {
            int profile, level;
            FUNC13(s, gb, &profile, &level);
            if (profile == FF_PROFILE_MPEG4_SIMPLE_STUDIO &&
                (level > 0 && level < 9)) {
                s->studio_profile = 1;
                FUNC15(gb);
                FUNC9(s, gb, 0);
            } else if (s->studio_profile) {
                FUNC3(s->avctx, "Mixes studio and non studio profile\n");
                return AVERROR_PATCHWELCOME;
            }
            s->avctx->profile = profile;
            s->avctx->level   = level;
        } else if (startcode == VISUAL_OBJ_STARTCODE) {
            if (s->studio_profile) {
                if ((ret = FUNC5(ctx, gb)) < 0)
                    return ret;
            } else
                FUNC14(s, gb);
        } else if (startcode == VOP_STARTCODE) {
            break;
        }

        FUNC1(gb);
        startcode = 0xff;
    }

end:
    if (s->avctx->flags & AV_CODEC_FLAG_LOW_DELAY)
        s->low_delay = 1;
    s->avctx->has_b_frames = !s->low_delay;

    if (s->studio_profile) {
        if (!s->avctx->bits_per_raw_sample) {
            FUNC2(s->avctx, AV_LOG_ERROR, "Missing VOL header\n");
            return AVERROR_INVALIDDATA;
        }
        return FUNC4(ctx, gb);
    } else
        return FUNC8(ctx, gb);
}