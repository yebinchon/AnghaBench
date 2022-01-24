#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  pb; int /*<<< orphan*/  metadata; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  dv_demux; } ;
typedef  TYPE_1__ RawDVContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_TIMECODE_STR_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s) {
    int ret;
    char timecode[AV_TIMECODE_STR_SIZE];
    int64_t pos = FUNC7(s->pb);

    // Read 3 DIF blocks: Header block and 2 Subcode blocks.
    int partial_frame_size = 3 * 80;
    uint8_t *partial_frame = FUNC4(sizeof(*partial_frame) *
                                        partial_frame_size);

    RawDVContext *c = s->priv_data;
    if (!partial_frame)
        return FUNC0(ENOMEM);

    ret = FUNC5(s->pb, partial_frame, partial_frame_size);
    if (ret < 0)
        goto finish;

    if (ret < partial_frame_size) {
        ret = -1;
        goto finish;
    }

    ret = FUNC8(c->dv_demux, partial_frame, timecode);
    if (ret)
        FUNC1(&s->metadata, "timecode", timecode, 0);
    else
        FUNC3(s, AV_LOG_ERROR, "Detected timecode is invalid\n");

finish:
    FUNC2(partial_frame);
    FUNC6(s->pb, pos, SEEK_SET);
    return ret;
}