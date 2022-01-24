#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int den; int num; } ;
struct TYPE_10__ {TYPE_1__ avg_frame_rate; TYPE_3__* codecpar; } ;
struct TYPE_9__ {scalar_t__ codec_id; int height; int width; int /*<<< orphan*/  extradata; } ;
struct TYPE_8__ {TYPE_5__** streams; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_WMV3 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVIOContext *pb = s->pb;

    if (par->codec_id != AV_CODEC_ID_WMV3) {
        FUNC0(s, AV_LOG_ERROR, "Only WMV3 is accepted!\n");
        return -1;
    }
    FUNC2(pb, 0); //frames count will be here
    FUNC1(pb, 0xC5);
    FUNC3(pb, 4);
    FUNC4(pb, par->extradata, 4);
    FUNC3(pb, par->height);
    FUNC3(pb, par->width);
    FUNC3(pb, 0xC);
    FUNC2(pb, 0); // hrd_buffer
    FUNC1(pb, 0x80); // level|cbr|res1
    FUNC3(pb, 0); // hrd_rate
    if (s->streams[0]->avg_frame_rate.den && s->streams[0]->avg_frame_rate.num == 1)
        FUNC3(pb, s->streams[0]->avg_frame_rate.den);
    else
        FUNC3(pb, 0xFFFFFFFF); //variable framerate
    FUNC5(s->streams[0], 32, 1, 1000);

    return 0;
}