#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_12__ {int height; int width; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_10__ {int duration; TYPE_5__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_WMV3 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  VC1_EXTRADATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;
    int frames;
    uint32_t fps;
    uint32_t size;

    frames = FUNC4(pb);
    if (FUNC3(pb) != 0xC5 || ((size = FUNC5(pb)) < 4))
        return AVERROR_INVALIDDATA;

    /* init video codec */
    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_WMV3;

    if (FUNC8(s, st->codecpar, pb, VC1_EXTRADATA_SIZE) < 0)
        return FUNC0(ENOMEM);

    FUNC6(pb, size - 4);
    st->codecpar->height = FUNC5(pb);
    st->codecpar->width = FUNC5(pb);
    if(FUNC5(pb) != 0xC)
        return AVERROR_INVALIDDATA;
    FUNC6(pb, 8);
    fps = FUNC5(pb);
    if(fps == 0xFFFFFFFF)
        FUNC7(st, 32, 1, 1000);
    else{
        if (!fps) {
            FUNC1(s, AV_LOG_ERROR, "Zero FPS specified, defaulting to 1 FPS\n");
            fps = 1;
        }
        FUNC7(st, 24, 1, fps);
        st->duration = frames;
    }

    return 0;
}