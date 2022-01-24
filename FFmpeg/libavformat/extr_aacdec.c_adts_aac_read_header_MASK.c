#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_18__ {int seekable; } ;
struct TYPE_17__ {TYPE_8__* pb; int /*<<< orphan*/  metadata; TYPE_2__* iformat; } ;
struct TYPE_16__ {int /*<<< orphan*/  need_parsing; TYPE_1__* codecpar; } ;
struct TYPE_15__ {int /*<<< orphan*/  raw_codec_id; } ;
struct TYPE_14__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL_RAW ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    AVStream *st;
    int ret;

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id   = s->iformat->raw_codec_id;
    st->need_parsing         = AVSTREAM_PARSE_FULL_RAW;

    FUNC8(s);
    if ((s->pb->seekable & AVIO_SEEKABLE_NORMAL) &&
        !FUNC2(s->metadata, "", NULL, AV_DICT_IGNORE_SUFFIX)) {
        int64_t cur = FUNC5(s->pb);
        FUNC7(s);
        FUNC4(s->pb, cur, SEEK_SET);
    }

    ret = FUNC1(s);
    if (ret < 0)
        return ret;

    // LCM of all possible ADTS sample rates
    FUNC6(st, 64, 1, 28224000);

    return 0;
}