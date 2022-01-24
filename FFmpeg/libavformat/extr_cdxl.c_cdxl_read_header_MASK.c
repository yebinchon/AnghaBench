#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ctx_flags; int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int video_stream_index; int audio_stream_index; int /*<<< orphan*/  filesize; scalar_t__ read_chunk; scalar_t__ framerate; int /*<<< orphan*/  fps; } ;
typedef  TYPE_1__ CDXLDemuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVFMTCTX_NOHEADER ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    CDXLDemuxContext *cdxl = s->priv_data;
    int ret;

    if (cdxl->framerate && (ret = FUNC1(&cdxl->fps, cdxl->framerate)) < 0) {
        FUNC0(s, AV_LOG_ERROR,
               "Could not parse framerate: %s.\n", cdxl->framerate);
        return ret;
    }

    cdxl->read_chunk         =  0;
    cdxl->video_stream_index = -1;
    cdxl->audio_stream_index = -1;

    cdxl->filesize = FUNC2(s->pb);

    s->ctx_flags |= AVFMTCTX_NOHEADER;

    return 0;
}