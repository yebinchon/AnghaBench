#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ codec_id; } ;
struct TYPE_8__ {int nb_streams; int /*<<< orphan*/ * pb; TYPE_1__** streams; } ;
struct TYPE_7__ {TYPE_3__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_WEBVTT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *ctx)
{
    AVStream     *s = ctx->streams[0];
    AVCodecParameters *par = ctx->streams[0]->codecpar;
    AVIOContext *pb = ctx->pb;

    if (ctx->nb_streams != 1 || par->codec_id != AV_CODEC_ID_WEBVTT) {
        FUNC1(ctx, AV_LOG_ERROR, "Exactly one WebVTT stream is needed.\n");
        return FUNC0(EINVAL);
    }

    FUNC4(s, 64, 1, 1000);

    FUNC3(pb, "WEBVTT\n");
    FUNC2(pb);

    return 0;
}