#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int int64_t ;
struct TYPE_20__ {int nb_streams; TYPE_1__* internal; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int seekable; } ;
struct TYPE_18__ {scalar_t__ next_startcode; TYPE_4__* avf; } ;
struct TYPE_17__ {int data_offset; } ;
typedef  TYPE_2__ NUTContext ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ INFO_STARTCODE ; 
 int /*<<< orphan*/  MAIN_STARTCODE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  STREAM_STARTCODE ; 
 scalar_t__ SYNCPOINT_STARTCODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_nut_metadata_conv ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    NUTContext *nut = s->priv_data;
    AVIOContext *bc = s->pb;
    int64_t pos;
    int initialized_stream_count;

    nut->avf = s;

    /* main header */
    pos = 0;
    do {
        pos = FUNC10(bc, MAIN_STARTCODE, pos) + 1;
        if (pos < 0 + 1) {
            FUNC1(s, AV_LOG_ERROR, "No main startcode found.\n");
            goto fail;
        }
    } while (FUNC5(nut) < 0);

    /* stream headers */
    pos = 0;
    for (initialized_stream_count = 0; initialized_stream_count < s->nb_streams;) {
        pos = FUNC10(bc, STREAM_STARTCODE, pos) + 1;
        if (pos < 0 + 1) {
            FUNC1(s, AV_LOG_ERROR, "Not all stream headers found.\n");
            goto fail;
        }
        if (FUNC6(nut) >= 0)
            initialized_stream_count++;
    }

    /* info headers */
    pos = 0;
    for (;;) {
        uint64_t startcode = FUNC9(bc, pos);
        pos = FUNC3(bc);

        if (startcode == 0) {
            FUNC1(s, AV_LOG_ERROR, "EOF before video frames\n");
            goto fail;
        } else if (startcode == SYNCPOINT_STARTCODE) {
            nut->next_startcode = startcode;
            break;
        } else if (startcode != INFO_STARTCODE) {
            continue;
        }

        FUNC4(nut);
    }

    s->internal->data_offset = pos - 8;

    if (bc->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t orig_pos = FUNC3(bc);
        FUNC8(nut);
        FUNC2(bc, orig_pos, SEEK_SET);
    }
    FUNC0(nut->next_startcode == SYNCPOINT_STARTCODE);

    FUNC7(s, NULL, ff_nut_metadata_conv);

    return 0;

fail:
    FUNC11(s);

    return AVERROR_INVALIDDATA;
}