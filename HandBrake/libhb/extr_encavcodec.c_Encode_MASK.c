#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_16__* context; int /*<<< orphan*/  file; TYPE_5__* job; int /*<<< orphan*/  frameno_in; int /*<<< orphan*/  chapter_queue; } ;
typedef  TYPE_6__ hb_work_private_t ;
struct TYPE_27__ {TYPE_6__* private_data; } ;
typedef  TYPE_7__ hb_work_object_t ;
struct TYPE_24__ {scalar_t__ new_chap; } ;
struct TYPE_22__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_28__ {TYPE_4__ s; TYPE_3__* plane; TYPE_2__ f; } ;
typedef  TYPE_8__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;
struct TYPE_21__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_29__ {int key_frame; scalar_t__ pts; int /*<<< orphan*/  quality; int /*<<< orphan*/  pict_type; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_1__ member_0; } ;
struct TYPE_25__ {scalar_t__ pass_id; scalar_t__ chapter_markers; } ;
struct TYPE_23__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  data; } ;
struct TYPE_20__ {char* stats_out; int /*<<< orphan*/  global_quality; } ;
typedef  TYPE_9__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 scalar_t__ HB_PASS_ENCODE_1ST ; 
 int FUNC0 (TYPE_16__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_8__*) ; 

__attribute__((used)) static void FUNC7( hb_work_object_t *w, hb_buffer_t *in,
                    hb_buffer_list_t *list )
{
    hb_work_private_t * pv = w->private_data;
    AVFrame             frame = {0};
    int                 ret;

    frame.width       = in->f.width;
    frame.height      = in->f.height;
    frame.data[0]     = in->plane[0].data;
    frame.data[1]     = in->plane[1].data;
    frame.data[2]     = in->plane[2].data;
    frame.linesize[0] = in->plane[0].stride;
    frame.linesize[1] = in->plane[1].stride;
    frame.linesize[2] = in->plane[2].stride;

    if (in->s.new_chap > 0 && pv->job->chapter_markers)
    {
        /* chapters have to start with an IDR frame so request that this
           frame be coded as IDR. Since there may be multiple frames
           currently buffered in the encoder remember the timestamp so
           when this frame finally pops out of the encoder we'll mark
           its buffer as the start of a chapter. */
        frame.pict_type = AV_PICTURE_TYPE_I;
        frame.key_frame = 1;
        FUNC4(pv->chapter_queue, in);
    }

    // For constant quality, setting the quality in AVCodecContext
    // doesn't do the trick.  It must be set in the AVFrame.
    frame.quality = pv->context->global_quality;

    // Bizarro ffmpeg requires timestamp time_base to be == framerate
    // for the encoders we care about.  It writes AVCodecContext.time_base
    // to the framerate field of encoded bitstream headers, so if we
    // want correct bitstreams, we must set time_base = framerate.
    // We can't pass timestamps that are not based on the time_base
    // because encoders require accurately based timestamps in order to
    // do proper rate control.
    //
    // I.e. ffmpeg doesn't support VFR timestamps.
    //
    // Because of this, we have to do some fugly things, like storing
    // PTS values and computing DTS ourselves.
    //
    // Remember timestamp info about this frame
    FUNC6(pv, in);
    FUNC1(pv, in);

    frame.pts = pv->frameno_in++;

    // Encode
    ret = FUNC0(pv->context, &frame);
    if (ret < 0)
    {
        FUNC5("encavcodec: avcodec_send_frame failed");
        return;
    }

    // Write stats
    if (pv->job->pass_id == HB_PASS_ENCODE_1ST &&
        pv->context->stats_out != NULL)
    {
        FUNC2( pv->file, "%s", pv->context->stats_out );
    }

    FUNC3(w, list);
}