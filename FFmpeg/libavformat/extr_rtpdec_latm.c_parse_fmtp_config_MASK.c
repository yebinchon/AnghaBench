#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int extradata_size; void** extradata; } ;
struct TYPE_4__ {TYPE_3__* codecpar; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVStream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void***) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(AVStream *st, const char *value)
{
    int len = FUNC6(NULL, value), i, ret = 0;
    GetBitContext gb;
    uint8_t *config;
    int audio_mux_version, same_time_framing, num_programs, num_layers;

    /* Pad this buffer, too, to avoid out of bounds reads with get_bits below */
    config = FUNC3(len + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!config)
        return FUNC0(ENOMEM);
    FUNC6(config, value);
    FUNC9(&gb, config, len*8);
    audio_mux_version = FUNC7(&gb, 1);
    same_time_framing = FUNC7(&gb, 1);
    FUNC10(&gb, 6); /* num_sub_frames */
    num_programs      = FUNC7(&gb, 4);
    num_layers        = FUNC7(&gb, 3);
    if (audio_mux_version != 0 || same_time_framing != 1 || num_programs != 0 ||
        num_layers != 0) {
        FUNC4(NULL, "LATM config (%d,%d,%d,%d)",
                                      audio_mux_version, same_time_framing,
                                      num_programs, num_layers);
        ret = AVERROR_PATCHWELCOME;
        goto end;
    }
    FUNC2(&st->codecpar->extradata);
    if (FUNC5(st->codecpar, (FUNC8(&gb) + 7)/8)) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    for (i = 0; i < st->codecpar->extradata_size; i++)
        st->codecpar->extradata[i] = FUNC7(&gb, 8);

end:
    FUNC1(config);
    return ret;
}