#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  boundary ;
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_MJPEG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    AVStream *st;
    char boundary[70 + 2 + 1] = {0};
    int64_t pos = FUNC3(s->pb);
    int ret;

    do {
        ret = FUNC5(s->pb, boundary, sizeof(boundary));
        if (ret < 0)
            return ret;
    } while (!boundary[0]);

    if (FUNC6(boundary, "--", 2))
        return AVERROR_INVALIDDATA;

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id   = AV_CODEC_ID_MJPEG;

    FUNC4(st, 60, 1, 25);

    FUNC2(s->pb, pos, SEEK_SET);

    return 0;
}