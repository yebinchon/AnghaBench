#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sampling_index; int object_type; int sbr; int /*<<< orphan*/  ps; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  chan_config; } ;
typedef  TYPE_1__ MPEG4AudioConfig ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AACContext ;

/* Variables and functions */
#define  AOT_AAC_LC 134 
#define  AOT_AAC_LTP 133 
#define  AOT_AAC_MAIN 132 
#define  AOT_AAC_SSR 131 
#define  AOT_ER_AAC_ELD 130 
#define  AOT_ER_AAC_LC 129 
#define  AOT_ER_AAC_LD 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(AACContext *ac,
                                           AVCodecContext *avctx,
                                           MPEG4AudioConfig *m4ac,
                                           GetBitContext *gb,
                                           int get_bit_alignment,
                                           int sync_extension)
{
    int i, ret;
    GetBitContext gbc = *gb;

    if ((i = FUNC6(m4ac, &gbc, sync_extension, avctx)) < 0)
        return AVERROR_INVALIDDATA;

    if (m4ac->sampling_index > 12) {
        FUNC1(avctx, AV_LOG_ERROR,
               "invalid sampling rate index %d\n",
               m4ac->sampling_index);
        return AVERROR_INVALIDDATA;
    }
    if (m4ac->object_type == AOT_ER_AAC_LD &&
        (m4ac->sampling_index < 3 || m4ac->sampling_index > 7)) {
        FUNC1(avctx, AV_LOG_ERROR,
               "invalid low delay sampling rate index %d\n",
               m4ac->sampling_index);
        return AVERROR_INVALIDDATA;
    }

    FUNC8(gb, i);

    switch (m4ac->object_type) {
    case AOT_AAC_MAIN:
    case AOT_AAC_LC:
    case AOT_AAC_SSR:
    case AOT_AAC_LTP:
    case AOT_ER_AAC_LC:
    case AOT_ER_AAC_LD:
        if ((ret = FUNC4(ac, avctx, gb, get_bit_alignment,
                                            m4ac, m4ac->chan_config)) < 0)
            return ret;
        break;
    case AOT_ER_AAC_ELD:
        if ((ret = FUNC3(ac, avctx, gb,
                                              m4ac, m4ac->chan_config)) < 0)
            return ret;
        break;
    default:
        FUNC2(avctx,
                                      "Audio object type %s%d",
                                      m4ac->sbr == 1 ? "SBR+" : "",
                                      m4ac->object_type);
        return FUNC0(ENOSYS);
    }

    FUNC5(avctx,
            "AOT %d chan config %d sampling index %d (%d) SBR %d PS %d\n",
            m4ac->object_type, m4ac->chan_config, m4ac->sampling_index,
            m4ac->sample_rate, m4ac->sbr,
            m4ac->ps);

    return FUNC7(gb);
}