#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pb; } ;
struct TYPE_12__ {void* den; void* num; } ;
struct TYPE_11__ {int /*<<< orphan*/  need_parsing; void* duration; TYPE_1__* codecpar; } ;
struct TYPE_10__ {void* height; void* width; void* codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVRational ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_HEADERS ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,void*,void*) ; 
 int /*<<< orphan*/  ff_codec_bmp_tags ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    AVStream *st;
    AVRational time_base;

    FUNC4(s->pb); // DKIF
    FUNC3(s->pb); // version
    FUNC3(s->pb); // header size

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);


    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_tag  = FUNC4(s->pb);
    st->codecpar->codec_id   = FUNC7(ff_codec_bmp_tags, st->codecpar->codec_tag);
    st->codecpar->width      = FUNC3(s->pb);
    st->codecpar->height     = FUNC3(s->pb);
    time_base.den         = FUNC4(s->pb);
    time_base.num         = FUNC4(s->pb);
    st->duration          = FUNC4(s->pb);
    FUNC5(s->pb, 4); // unused

    st->need_parsing      = AVSTREAM_PARSE_HEADERS;

    if (!time_base.den || !time_base.num) {
        FUNC1(s, AV_LOG_ERROR, "Invalid frame rate\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC6(st, 64, time_base.num, time_base.den);

    return 0;
}