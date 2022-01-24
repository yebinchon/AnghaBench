#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ io_pattern; } ;
struct TYPE_17__ {TYPE_1__ config; scalar_t__ decode; } ;
struct TYPE_21__ {int video_codec_opened; int /*<<< orphan*/  packet_info; TYPE_5__* title; TYPE_8__* context; int /*<<< orphan*/  threads; int /*<<< orphan*/  codec; TYPE_2__ qsv; } ;
typedef  TYPE_6__ hb_work_private_t ;
struct TYPE_22__ {TYPE_6__* private_data; } ;
typedef  TYPE_7__ hb_work_object_t ;
struct TYPE_18__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_23__ {int error_concealment; TYPE_3__ pkt_timebase; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; TYPE_1__* hwaccel_context; int /*<<< orphan*/  err_recognition; int /*<<< orphan*/  workaround_bugs; } ;
struct TYPE_19__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_20__ {int flags; TYPE_4__ video_timebase; } ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_8__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_EF_CRCCHECK ; 
 int /*<<< orphan*/  FF_BUG_AUTODETECT ; 
 int FF_EC_DEBLOCK ; 
 int FF_EC_GUESS_MVS ; 
 int HBTF_NO_IDR ; 
 int HB_WORK_OK ; 
 scalar_t__ MFX_IOPATTERN_OUT_VIDEO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__**) ; 
 scalar_t__ FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (TYPE_6__*,TYPE_8__*) ; 

__attribute__((used)) static int FUNC9( hb_work_object_t * w )
{
    hb_work_private_t * pv     = w->private_data;

    // if this is the first frame open the codec (we have to wait for the
    // first frame because of M$ VC1 braindamage).
    if ( !pv->video_codec_opened )
    {
        AVCodecContext * context = FUNC3(pv->codec);
        if (FUNC8(pv, context))
        {
            // we didn't find the headers needed to set up extradata.
            // the codec will abort if we open it so just free the buf
            // and hope we eventually get the info we need.
            return HB_WORK_OK;
        }

        FUNC5(&pv->context);
        pv->context = context;

        pv->context->workaround_bugs   = FF_BUG_AUTODETECT;
        pv->context->err_recognition   = AV_EF_CRCCHECK;
        pv->context->error_concealment = FF_EC_GUESS_MVS|FF_EC_DEBLOCK;


#if HB_PROJECT_FEATURE_QSV
        if (pv->qsv.decode &&
            pv->qsv.config.io_pattern == MFX_IOPATTERN_OUT_VIDEO_MEMORY)
        {
            // set the QSV configuration before opening the decoder
            pv->context->hwaccel_context = &pv->qsv.config;
        }
#endif

        AVDictionary * av_opts = NULL;
        FUNC1( &av_opts, "refcounted_frames", "1", 0 );
        if (pv->title->flags & HBTF_NO_IDR)
        {
            FUNC1( &av_opts, "flags", "output_corrupt", 0 );
        }

        // disable threaded decoding for scan, can cause crashes
        if ( FUNC6( pv->context, pv->codec, &av_opts, pv->threads ) )
        {
            FUNC0( &av_opts );
            FUNC7( "decavcodecvWork: avcodec_open failed" );
            // avcodec_open can fail due to incorrectly parsed extradata
            // so try again when this fails
            FUNC2( &pv->context->extradata );
            pv->context->extradata_size = 0;
            return HB_WORK_OK;
        }
        pv->context->pkt_timebase.num = pv->title->video_timebase.num;
        pv->context->pkt_timebase.den = pv->title->video_timebase.den;
        FUNC0( &av_opts );
        pv->video_codec_opened = 1;
    }

    FUNC4(pv, &pv->packet_info);

    return HB_WORK_OK;
}