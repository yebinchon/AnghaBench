#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  extradata; } ;
struct TYPE_14__ {TYPE_1__* internal; int /*<<< orphan*/  pb; } ;
struct TYPE_13__ {TYPE_4__* codecpar; } ;
struct TYPE_12__ {int /*<<< orphan*/  data_offset; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVPRIV_CODEC2_EXTRADATA_SIZE ; 
 int /*<<< orphan*/  AVPRIV_CODEC2_HEADER_SIZE ; 
 scalar_t__ AVPRIV_CODEC2_MAGIC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int EXPECTED_CODEC2_MAJOR_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    AVStream *st = FUNC2(s, NULL);
    int ret, version;

    if (!st) {
        return FUNC0(ENOMEM);
    }

    if (FUNC3(s->pb) != AVPRIV_CODEC2_MAGIC) {
        FUNC1(s, AV_LOG_ERROR, "not a .c2 file\n");
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC7(st->codecpar, AVPRIV_CODEC2_EXTRADATA_SIZE);
    if (ret) {
        return ret;
    }

    ret = FUNC8(s->pb, st->codecpar->extradata, AVPRIV_CODEC2_EXTRADATA_SIZE);
    if (ret < 0) {
        return ret;
    }

    version = FUNC4(st->codecpar->extradata);
    if ((version >> 8) != EXPECTED_CODEC2_MAJOR_VERSION) {
        FUNC5(s, "Major version %i", version >> 8);
        return AVERROR_PATCHWELCOME;
    }

    s->internal->data_offset = AVPRIV_CODEC2_HEADER_SIZE;

    return FUNC6(s, st);
}