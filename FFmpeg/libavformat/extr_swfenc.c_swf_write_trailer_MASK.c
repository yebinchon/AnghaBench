#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ codec_type; } ;
struct TYPE_16__ {int nb_streams; TYPE_3__* pb; TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int seekable; } ;
struct TYPE_14__ {int duration_pos; int vframes_pos; int /*<<< orphan*/  video_frame_number; int /*<<< orphan*/  audio_fifo; } ;
struct TYPE_13__ {TYPE_5__* codecpar; } ;
typedef  TYPE_2__ SWFContext ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TAG_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par, *video_par;
    int file_size, i;

    video_par = NULL;
    for(i=0;i<s->nb_streams;i++) {
        par = s->streams[i]->codecpar;
        if (par->codec_type == AVMEDIA_TYPE_VIDEO)
            video_par = par;
        else {
            FUNC0(&swf->audio_fifo);
        }
    }

    FUNC6(s, TAG_END);
    FUNC5(s);

    /* patch file size and number of frames if not streamed */
    if ((s->pb->seekable & AVIO_SEEKABLE_NORMAL) && video_par) {
        file_size = FUNC2(pb);
        FUNC1(pb, 4, SEEK_SET);
        FUNC4(pb, file_size);
        FUNC1(pb, swf->duration_pos, SEEK_SET);
        FUNC3(pb, swf->video_frame_number);
        if (swf->vframes_pos) {
        FUNC1(pb, swf->vframes_pos, SEEK_SET);
        FUNC3(pb, swf->video_frame_number);
        }
        FUNC1(pb, file_size, SEEK_SET);
    }
    return 0;
}