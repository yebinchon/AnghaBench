#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_12__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {scalar_t__ last_sector; int /*<<< orphan*/  drive; int /*<<< orphan*/  paranoia; } ;
struct TYPE_9__ {scalar_t__ cur_dts; } ;
typedef  TYPE_2__ CDIOContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  CDIO_CD_FRAMESIZE_RAW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *ctx, AVPacket *pkt)
{
    CDIOContext *s = ctx->priv_data;
    int ret;
    uint16_t *buf;
    char *err = NULL;

    if (ctx->streams[0]->cur_dts > s->last_sector)
        return AVERROR_EOF;

    buf = FUNC4(s->paranoia, NULL);
    if (!buf)
        return AVERROR_EOF;

    if ((err = FUNC2(s->drive))) {
        FUNC0(ctx, AV_LOG_ERROR, "%s\n", err);
        FUNC5(err);
        err = NULL;
    }
    if ((err = FUNC3(s->drive))) {
        FUNC0(ctx, AV_LOG_VERBOSE, "%s\n", err);
        FUNC5(err);
        err = NULL;
    }

    if ((ret = FUNC1(pkt, CDIO_CD_FRAMESIZE_RAW)) < 0)
        return ret;
    FUNC6(pkt->data, buf, CDIO_CD_FRAMESIZE_RAW);
    return 0;
}