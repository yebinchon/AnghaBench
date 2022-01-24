#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int last_chunk_pos; int last_timestamp_pos; int timeline_start_pos; int serial; int first_video_flag; scalar_t__ nb_index; } ;
typedef  TYPE_2__ WtvContext ;
struct TYPE_16__ {int nb_streams; TYPE_3__** streams; TYPE_2__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_15__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {scalar_t__ codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_MJPEG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int WTV_BIGSECTOR_BITS ; 
 int WTV_SECTOR_BITS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ff_wtv_guid ; 
 int /*<<< orphan*/  sub_wtv_guid ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    int i, pad, ret;
    AVStream *st;

    wctx->last_chunk_pos     = -1;
    wctx->last_timestamp_pos = -1;

    FUNC3(pb, &ff_wtv_guid);
    FUNC3(pb, &sub_wtv_guid);

    FUNC2(pb, 0x01);
    FUNC2(pb, 0x02);
    FUNC2(pb, 1 << WTV_SECTOR_BITS);
    FUNC2(pb, 1 << WTV_BIGSECTOR_BITS);

    //write initial root fields
    FUNC2(pb, 0); // root_size, update later
    FUNC5(pb, 4);
    FUNC2(pb, 0); // root_sector, update it later.

    FUNC5(pb, 32);
    FUNC2(pb, 0); // file ends pointer, update it later.

    pad = (1 << WTV_SECTOR_BITS) - FUNC1(pb);
    FUNC5(pb, pad);

    wctx->timeline_start_pos = FUNC1(pb);

    wctx->serial = 1;
    wctx->last_chunk_pos = -1;
    wctx->first_video_flag = 1;

    for (i = 0; i < s->nb_streams; i++) {
        st = s->streams[i];
        if (st->codecpar->codec_id == AV_CODEC_ID_MJPEG)
            continue;
        ret = FUNC6(s, st);
        if (ret < 0) {
            FUNC0(s, AV_LOG_ERROR, "write stream codec failed codec_type(0x%x)\n", st->codecpar->codec_type);
            return -1;
        }
        if (!i)
            FUNC8(s);
    }

    for (i = 0; i < s->nb_streams; i++) {
        st = s->streams[i];
        if (st->codecpar->codec_id == AV_CODEC_ID_MJPEG)
            continue;
        ret  = FUNC7(s, st);
        if (ret < 0) {
            FUNC0(s, AV_LOG_ERROR, "write stream data failed codec_type(0x%x)\n", st->codecpar->codec_type);
            return -1;
        }
    }

    if (wctx->nb_index)
        FUNC4(s);

    return 0;
}