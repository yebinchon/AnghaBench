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
typedef  int int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int last_good_pos; int type; int /*<<< orphan*/  timestamp; void* date; void* frame_number; void* frame_subnumber; void* channel; void* subtype; } ;
typedef  TYPE_1__ DHAVContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 void* FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    DHAVContext *dhav = s->priv_data;
    int frame_length, ext_length;
    int64_t start, end;
    int ret;

    if (FUNC1(s->pb))
        return AVERROR_EOF;

    if (FUNC4(s->pb) != FUNC0('D','H','A','V')) {
        dhav->last_good_pos += 0x8000;
        FUNC5(s->pb, dhav->last_good_pos, SEEK_SET);

        while (FUNC4(s->pb) != FUNC0('D','H','A','V')) {
            if (FUNC1(s->pb))
                return AVERROR_EOF;
            dhav->last_good_pos += 0x8000;
            ret = FUNC6(s->pb, 0x8000 - 4);
            if (ret < 0)
                return ret;
        }
    }

    start = FUNC7(s->pb) - 4;
    dhav->last_good_pos = start;
    dhav->type = FUNC2(s->pb);
    dhav->subtype = FUNC2(s->pb);
    dhav->channel = FUNC2(s->pb);
    dhav->frame_subnumber = FUNC2(s->pb);
    dhav->frame_number = FUNC4(s->pb);
    frame_length = FUNC4(s->pb);

    if (frame_length < 24)
        return AVERROR_INVALIDDATA;
    if (dhav->type == 0xf1) {
        ret = FUNC6(s->pb, frame_length - 16);
        return ret < 0 ? ret : 0;
    }

    dhav->date = FUNC4(s->pb);
    dhav->timestamp = FUNC3(s->pb);
    ext_length = FUNC2(s->pb);
    FUNC6(s->pb, 1); // checksum

    ret = FUNC8(s, ext_length);
    if (ret < 0)
        return ret;

    end = FUNC7(s->pb);

    return frame_length - 8 - (end - start);
}