#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ codec_type; scalar_t__ codec_id; int width; int height; } ;
struct TYPE_9__ {int nb_streams; TYPE_2__** streams; int /*<<< orphan*/ * pb; } ;
struct TYPE_7__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_8__ {TYPE_1__ time_base; TYPE_4__* codecpar; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_AV1 ; 
 scalar_t__ AV_CODEC_ID_VP8 ; 
 scalar_t__ AV_CODEC_ID_VP9 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    AVCodecParameters *par;
    AVIOContext *pb = s->pb;

    if (s->nb_streams != 1) {
        FUNC2(s, AV_LOG_ERROR, "Format supports only exactly one video stream\n");
        return FUNC0(EINVAL);
    }
    par = s->streams[0]->codecpar;
    if (par->codec_type != AVMEDIA_TYPE_VIDEO ||
        !(par->codec_id == AV_CODEC_ID_AV1 ||
          par->codec_id == AV_CODEC_ID_VP8 ||
          par->codec_id == AV_CODEC_ID_VP9)) {
        FUNC2(s, AV_LOG_ERROR, "Currently only VP8, VP9 and AV1 are supported!\n");
        return FUNC0(EINVAL);
    }
    FUNC6(pb, "DKIF", 4);
    FUNC3(pb, 0); // version
    FUNC3(pb, 32); // header length
    FUNC4(pb,
              par->codec_id == AV_CODEC_ID_VP9 ? FUNC1("VP90") :
              par->codec_id == AV_CODEC_ID_VP8 ? FUNC1("VP80") : FUNC1("AV01"));
    FUNC3(pb, par->width);
    FUNC3(pb, par->height);
    FUNC4(pb, s->streams[0]->time_base.den);
    FUNC4(pb, s->streams[0]->time_base.num);
    FUNC5(pb, 0xFFFFFFFFFFFFFFFFULL); // length is overwritten at the end of muxing

    return 0;
}