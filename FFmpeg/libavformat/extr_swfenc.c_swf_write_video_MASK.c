#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_11__ {scalar_t__ codec_id; int width; int height; } ;
struct TYPE_10__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int swf_frame_number; int video_frame_number; int sound_samples; int /*<<< orphan*/  audio_fifo; scalar_t__ audio_par; int /*<<< orphan*/  vframes_pos; } ;
typedef  TYPE_1__ SWFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_FLV1 ; 
 scalar_t__ AV_CODEC_ID_MJPEG ; 
 scalar_t__ AV_CODEC_ID_VP6F ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int BITMAP_ID ; 
 int FRAC_BITS ; 
 int SHAPE_ID ; 
 int TAG_FREECHARACTER ; 
 int TAG_JPEG2 ; 
 int TAG_LONG ; 
 int TAG_PLACEOBJECT ; 
 int TAG_PLACEOBJECT2 ; 
 int TAG_REMOVEOBJECT ; 
 int TAG_SHOWFRAME ; 
 int TAG_STREAMBLOCK ; 
 int TAG_VIDEOFRAME ; 
 int TAG_VIDEOSTREAM ; 
 int VIDEO_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ff_swf_codec_tags ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s,
                           AVCodecParameters *par, const uint8_t *buf, int size)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;

    /* Flash Player limit */
    if (swf->swf_frame_number == 16000)
        FUNC2(s, AV_LOG_INFO, "warning: Flash Player limit of 16000 frames reached\n");

    if (par->codec_id == AV_CODEC_ID_VP6F ||
        par->codec_id == AV_CODEC_ID_FLV1) {
        if (swf->video_frame_number == 0) {
            /* create a new video object */
            FUNC11(s, TAG_VIDEOSTREAM);
            FUNC6(pb, VIDEO_ID);
            swf->vframes_pos = FUNC3(pb);
            FUNC6(pb, 15000); /* hard flash player limit */
            FUNC6(pb, par->width);
            FUNC6(pb, par->height);
            FUNC4(pb, 0);
            FUNC4(pb,FUNC8(ff_swf_codec_tags, par->codec_id));
            FUNC9(s);

            /* place the video object for the first time */
            FUNC11(s, TAG_PLACEOBJECT2);
            FUNC4(pb, 0x36);
            FUNC6(pb, 1);
            FUNC6(pb, VIDEO_ID);
            FUNC10(pb, 1 << FRAC_BITS, 0, 0, 1 << FRAC_BITS, 0, 0);
            FUNC6(pb, swf->video_frame_number);
            FUNC7(pb, "video", 5);
            FUNC4(pb, 0x00);
            FUNC9(s);
        } else {
            /* mark the character for update */
            FUNC11(s, TAG_PLACEOBJECT2);
            FUNC4(pb, 0x11);
            FUNC6(pb, 1);
            FUNC6(pb, swf->video_frame_number);
            FUNC9(s);
        }

        /* set video frame data */
        FUNC11(s, TAG_VIDEOFRAME | TAG_LONG);
        FUNC6(pb, VIDEO_ID);
        FUNC6(pb, swf->video_frame_number++);
        FUNC7(pb, buf, size);
        FUNC9(s);
    } else if (par->codec_id == AV_CODEC_ID_MJPEG) {
        if (swf->swf_frame_number > 0) {
            /* remove the shape */
            FUNC11(s, TAG_REMOVEOBJECT);
            FUNC6(pb, SHAPE_ID); /* shape ID */
            FUNC6(pb, 1); /* depth */
            FUNC9(s);

            /* free the bitmap */
            FUNC11(s, TAG_FREECHARACTER);
            FUNC6(pb, BITMAP_ID);
            FUNC9(s);
        }

        FUNC11(s, TAG_JPEG2 | TAG_LONG);

        FUNC6(pb, BITMAP_ID); /* ID of the image */

        /* a dummy jpeg header seems to be required */
        FUNC5(pb, 0xffd8ffd9);
        /* write the jpeg image */
        FUNC7(pb, buf, size);

        FUNC9(s);

        /* draw the shape */

        FUNC11(s, TAG_PLACEOBJECT);
        FUNC6(pb, SHAPE_ID); /* shape ID */
        FUNC6(pb, 1); /* depth */
        FUNC10(pb, 20 << FRAC_BITS, 0, 0, 20 << FRAC_BITS, 0, 0);
        FUNC9(s);
    }

    swf->swf_frame_number++;

    /* streaming sound always should be placed just before showframe tags */
    if (swf->audio_par && FUNC1(swf->audio_fifo)) {
        int frame_size = FUNC1(swf->audio_fifo);
        FUNC11(s, TAG_STREAMBLOCK | TAG_LONG);
        FUNC6(pb, swf->sound_samples);
        FUNC6(pb, 0); // seek samples
        FUNC0(swf->audio_fifo, pb, frame_size, (void*)avio_write);
        FUNC9(s);

        /* update FIFO */
        swf->sound_samples = 0;
    }

    /* output the frame */
    FUNC11(s, TAG_SHOWFRAME);
    FUNC9(s);

    return 0;
}