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
struct TYPE_10__ {int den; } ;
struct TYPE_12__ {int duration; TYPE_1__ time_base; TYPE_2__* codecpar; } ;
struct TYPE_11__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_CDGRAPHICS ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int CDG_PACKET_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    AVStream *vst;
    int ret;

    vst = FUNC2(s, NULL);
    if (!vst)
        return FUNC0(ENOMEM);

    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vst->codecpar->codec_id   = AV_CODEC_ID_CDGRAPHICS;

    /// 75 sectors/sec * 4 packets/sector = 300 packets/sec
    FUNC4(vst, 32, 1, 300);

    ret = FUNC3(s->pb);
    if (ret < 0) {
        FUNC1(s, AV_LOG_WARNING, "Cannot calculate duration as file size cannot be determined\n");
    } else
        vst->duration = (ret * vst->time_base.den) / (CDG_PACKET_SIZE * 300);

    return 0;
}