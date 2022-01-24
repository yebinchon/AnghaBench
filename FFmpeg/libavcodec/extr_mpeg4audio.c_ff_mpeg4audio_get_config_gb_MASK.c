#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ object_type; int chan_config; int channels; int sbr; int ps; scalar_t__ ext_object_type; int ext_chan_config; void* sample_rate; void* ext_sample_rate; int /*<<< orphan*/  ext_sampling_index; int /*<<< orphan*/  sampling_index; } ;
typedef  TYPE_1__ MPEG4AudioConfig ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ AOT_AAC_LC ; 
 scalar_t__ AOT_ALS ; 
 scalar_t__ AOT_ER_BSAC ; 
 scalar_t__ AOT_NULL ; 
 scalar_t__ AOT_PS ; 
 scalar_t__ AOT_SBR ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,size_t) ; 
 int* ff_mpeg4audio_channels ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

int FUNC14(MPEG4AudioConfig *c, GetBitContext *gb,
                                int sync_extension, void *logctx)
{
    int specific_config_bitindex, ret;
    int start_bit_index = FUNC5(gb);
    c->object_type = FUNC7(gb);
    c->sample_rate = FUNC8(gb, &c->sampling_index);
    c->chan_config = FUNC3(gb, 4);
    if (c->chan_config < FUNC0(ff_mpeg4audio_channels))
        c->channels = ff_mpeg4audio_channels[c->chan_config];
    else {
        FUNC2(logctx, AV_LOG_ERROR, "Invalid chan_config %d\n", c->chan_config);
        return AVERROR_INVALIDDATA;
    }
    c->sbr = -1;
    c->ps  = -1;
    if (c->object_type == AOT_SBR || (c->object_type == AOT_PS &&
        // check for W6132 Annex YYYY draft MP3onMP4
        !(FUNC10(gb, 3) & 0x03 && !(FUNC10(gb, 9) & 0x3F)))) {
        if (c->object_type == AOT_PS)
            c->ps = 1;
        c->ext_object_type = AOT_SBR;
        c->sbr = 1;
        c->ext_sample_rate = FUNC8(gb, &c->ext_sampling_index);
        c->object_type = FUNC7(gb);
        if (c->object_type == AOT_ER_BSAC)
            c->ext_chan_config = FUNC3(gb, 4);
    } else {
        c->ext_object_type = AOT_NULL;
        c->ext_sample_rate = 0;
    }
    specific_config_bitindex = FUNC5(gb);

    if (c->object_type == AOT_ALS) {
        FUNC12(gb, 5);
        if (FUNC11(gb, 24) != FUNC1('\0','A','L','S'))
            FUNC13(gb, 24);

        specific_config_bitindex = FUNC5(gb);

        ret = FUNC9(gb, c);
        if (ret < 0)
            return ret;
    }

    if (c->ext_object_type != AOT_SBR && sync_extension) {
        while (FUNC6(gb) > 15) {
            if (FUNC10(gb, 11) == 0x2b7) { // sync extension
                FUNC3(gb, 11);
                c->ext_object_type = FUNC7(gb);
                if (c->ext_object_type == AOT_SBR && (c->sbr = FUNC4(gb)) == 1) {
                    c->ext_sample_rate = FUNC8(gb, &c->ext_sampling_index);
                    if (c->ext_sample_rate == c->sample_rate)
                        c->sbr = -1;
                }
                if (FUNC6(gb) > 11 && FUNC3(gb, 11) == 0x548)
                    c->ps = FUNC4(gb);
                break;
            } else
                FUNC4(gb); // skip 1 bit
        }
    }

    //PS requires SBR
    if (!c->sbr)
        c->ps = 0;
    //Limit implicit PS to the HE-AACv2 Profile
    if ((c->ps == -1 && c->object_type != AOT_AAC_LC) || c->channels & ~0x01)
        c->ps = 0;

    return specific_config_bitindex - start_bit_index;
}