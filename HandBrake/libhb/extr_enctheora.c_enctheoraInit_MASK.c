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
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct TYPE_26__ {int pic_width; int pic_height; int frame_width; int frame_height; int target_bitrate; scalar_t__ quality; int keyframe_granule_shift; int /*<<< orphan*/  pixel_fmt; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  aspect_denominator; int /*<<< orphan*/  aspect_numerator; int /*<<< orphan*/  fps_denominator; int /*<<< orphan*/  fps_numerator; scalar_t__ pic_y; scalar_t__ pic_x; } ;
typedef  TYPE_6__ th_info ;
typedef  int /*<<< orphan*/  th_comment ;
typedef  int /*<<< orphan*/  op ;
struct TYPE_27__ {int bytes; struct TYPE_27__* packet; } ;
typedef  TYPE_7__ ogg_packet ;
typedef  int /*<<< orphan*/  keyframe_frequency ;
struct TYPE_28__ {int /*<<< orphan*/  ctx; void* file; TYPE_10__* job; } ;
typedef  TYPE_8__ hb_work_private_t ;
struct TYPE_29__ {TYPE_5__* config; TYPE_8__* private_data; } ;
typedef  TYPE_9__ hb_work_object_t ;
struct TYPE_23__ {double den; scalar_t__ num; } ;
struct TYPE_22__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_21__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_20__ {scalar_t__ pass_id; int width; int height; scalar_t__ vquality; int vbitrate; TYPE_3__ orig_vrate; TYPE_2__ par; TYPE_1__ vrate; } ;
typedef  TYPE_10__ hb_job_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_24__ {TYPE_7__** headers; } ;
struct TYPE_25__ {TYPE_4__ theora; } ;

/* Variables and functions */
 scalar_t__ HB_INVALID_VIDEO_QUALITY ; 
 scalar_t__ HB_PASS_ENCODE_1ST ; 
 scalar_t__ HB_PASS_ENCODE_2ND ; 
 int /*<<< orphan*/  TH_CS_UNSPECIFIED ; 
 int /*<<< orphan*/  TH_ENCCTL_2PASS_IN ; 
 int /*<<< orphan*/  TH_ENCCTL_2PASS_OUT ; 
 int /*<<< orphan*/  TH_ENCCTL_SET_KEYFRAME_FREQUENCY_FORCE ; 
 int /*<<< orphan*/  TH_ENCCTL_SET_RATE_BUFFER ; 
 int /*<<< orphan*/  TH_ENCCTL_SET_RATE_FLAGS ; 
 int /*<<< orphan*/  TH_PF_420 ; 
 int TH_RATECTL_CAP_UNDERFLOW ; 
 TYPE_8__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (unsigned char*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 

int FUNC16( hb_work_object_t * w, hb_job_t * job )
{
    int keyframe_frequency, log_keyframe, ret;
    hb_work_private_t * pv = FUNC0( 1, sizeof( hb_work_private_t ) );
    w->private_data = pv;

    pv->job = job;

    if( job->pass_id == HB_PASS_ENCODE_1ST ||
        job->pass_id == HB_PASS_ENCODE_2ND )
    {
        char * filename;
        filename = FUNC6("theroa.log");
        if ( job->pass_id == HB_PASS_ENCODE_1ST )
        {
            pv->file = FUNC5(filename, "wb");
        }
        else
        {
            pv->file = FUNC5(filename, "rb");
        }
        FUNC2(filename);
    }

    th_info ti;
    th_comment tc;
    ogg_packet op;
    FUNC15( &ti );

    /* Frame width and height need to be multiples of 16 */
    ti.pic_width = job->width;
    ti.pic_height = job->height;
    ti.frame_width = (job->width + 0xf) & ~0xf;
    ti.frame_height = (job->height + 0xf) & ~0xf;
    ti.pic_x = ti.pic_y = 0;
    ti.fps_numerator = job->vrate.num;
    ti.fps_denominator = job->vrate.den;
    ti.aspect_numerator = job->par.num;
    ti.aspect_denominator = job->par.den;
    ti.colorspace = TH_CS_UNSPECIFIED;
    ti.pixel_fmt = TH_PF_420;
    if (job->vquality <= HB_INVALID_VIDEO_QUALITY)
    {
        ti.target_bitrate = job->vbitrate * 1000;
        ti.quality = 0;
    }
    else
    {
        ti.target_bitrate = 0;
        ti.quality = job->vquality;
    }

    keyframe_frequency = ((double)job->orig_vrate.num / job->orig_vrate.den +
                                  0.5) * 10;

    FUNC7("theora: keyint: %i", keyframe_frequency);

    int tmp = keyframe_frequency - 1;
    for (log_keyframe = 0; tmp; log_keyframe++)
        tmp >>= 1;

    ti.keyframe_granule_shift = log_keyframe;

    pv->ctx = FUNC11( &ti );
    FUNC14( &ti );

    ret = FUNC12(pv->ctx, TH_ENCCTL_SET_KEYFRAME_FREQUENCY_FORCE,
                        &keyframe_frequency, sizeof(keyframe_frequency));
    if( ret < 0 )
    {
        FUNC7("theora: Could not set keyframe interval to %d", keyframe_frequency);
    }

    /* Set "soft target" rate control which improves quality at the
     * expense of solid bitrate caps */
    int arg = TH_RATECTL_CAP_UNDERFLOW;
    ret = FUNC12(pv->ctx, TH_ENCCTL_SET_RATE_FLAGS, &arg, sizeof(arg));
    if( ret < 0 )
    {
        FUNC7("theora: Could not set soft ratecontrol");
    }
    if( job->pass_id == HB_PASS_ENCODE_1ST ||
        job->pass_id == HB_PASS_ENCODE_2ND )
    {
        arg = keyframe_frequency * 7 >> 1;
        ret = FUNC12(pv->ctx, TH_ENCCTL_SET_RATE_BUFFER, &arg, sizeof(arg));
        if( ret < 0 )
        {
            FUNC7("theora: Could not set rate control buffer");
        }
    }

    if( job->pass_id == HB_PASS_ENCODE_1ST )
    {
        unsigned char *buffer;
        int bytes;
        bytes = FUNC12(pv->ctx, TH_ENCCTL_2PASS_OUT, &buffer, sizeof(buffer));
        if( bytes < 0 )
        {
            FUNC4("Could not set up the first pass of two-pass mode.\n");
            FUNC4("Did you remember to specify an estimated bitrate?\n");
            return 1;
        }
        if( FUNC3( buffer, 1, bytes, pv->file ) < bytes )
        {
            FUNC4("Unable to write to two-pass data file.\n");
            return 1;
        }
        FUNC1( pv->file );
    }
    if( job->pass_id == HB_PASS_ENCODE_2ND )
    {
        /* Enable the second pass here.
         * We make this call just to set the encoder into 2-pass mode, because
         * by default enabling two-pass sets the buffer delay to the whole file
         * (because there's no way to explicitly request that behavior).
         * If we waited until we were actually encoding, it would overwrite our
         * settings.*/
        FUNC7("enctheora: init 2nd pass");
        if( FUNC12( pv->ctx, TH_ENCCTL_2PASS_IN, NULL, 0) < 0)
        {
            FUNC7("theora: Could not set up the second pass of two-pass mode.");
            return 1;
        }
    }

    FUNC10( &tc );

    ogg_packet *header;

    int ii;
    for (ii = 0; ii < 3; ii++)
    {
        FUNC13( pv->ctx, &tc, &op );
        header = (ogg_packet*)w->config->theora.headers[ii];
        FUNC8(header, &op, sizeof(op));
        header->packet = w->config->theora.headers[ii] + sizeof(ogg_packet);
        FUNC8(header->packet, op.packet, op.bytes );
    }

    FUNC9( &tc );

    return 0;
}