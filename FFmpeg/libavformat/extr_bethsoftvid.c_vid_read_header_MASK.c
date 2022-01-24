#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ctx_flags; int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int video_index; int audio_index; int /*<<< orphan*/  sample_rate; void* bethsoft_global_delay; void* height; void* width; void* nframes; } ;
typedef  TYPE_1__ BVID_DemuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVFMTCTX_NOHEADER ; 
 int /*<<< orphan*/  DEFAULT_SAMPLE_RATE ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s)
{
    BVID_DemuxContext *vid = s->priv_data;
    AVIOContext *pb = s->pb;

    /* load main header. Contents:
    *    bytes: 'V' 'I' 'D'
    *    int16s: always_512, nframes, width, height, delay, always_14
    */
    FUNC1(pb, 5);
    vid->nframes = FUNC0(pb);
    vid->width   = FUNC0(pb);
    vid->height  = FUNC0(pb);
    vid->bethsoft_global_delay = FUNC0(pb);
    FUNC0(pb);

    // wait until the first packet to create each stream
    vid->video_index = -1;
    vid->audio_index = -1;
    vid->sample_rate = DEFAULT_SAMPLE_RATE;
    s->ctx_flags |= AVFMTCTX_NOHEADER;

    return 0;
}