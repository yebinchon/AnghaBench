
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ io_pattern; } ;
struct TYPE_17__ {TYPE_1__ config; scalar_t__ decode; } ;
struct TYPE_21__ {int video_codec_opened; int packet_info; TYPE_5__* title; TYPE_8__* context; int threads; int codec; TYPE_2__ qsv; } ;
typedef TYPE_6__ hb_work_private_t ;
struct TYPE_22__ {TYPE_6__* private_data; } ;
typedef TYPE_7__ hb_work_object_t ;
struct TYPE_18__ {int den; int num; } ;
struct TYPE_23__ {int error_concealment; TYPE_3__ pkt_timebase; scalar_t__ extradata_size; int extradata; TYPE_1__* hwaccel_context; int err_recognition; int workaround_bugs; } ;
struct TYPE_19__ {int den; int num; } ;
struct TYPE_20__ {int flags; TYPE_4__ video_timebase; } ;
typedef int AVDictionary ;
typedef TYPE_8__ AVCodecContext ;


 int AV_EF_CRCCHECK ;
 int FF_BUG_AUTODETECT ;
 int FF_EC_DEBLOCK ;
 int FF_EC_GUESS_MVS ;
 int HBTF_NO_IDR ;
 int HB_WORK_OK ;
 scalar_t__ MFX_IOPATTERN_OUT_VIDEO_MEMORY ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_freep (int *) ;
 TYPE_8__* avcodec_alloc_context3 (int ) ;
 int decodeFrame (TYPE_6__*,int *) ;
 int hb_avcodec_free_context (TYPE_8__**) ;
 scalar_t__ hb_avcodec_open (TYPE_8__*,int ,int **,int ) ;
 int hb_log (char*) ;
 scalar_t__ setup_extradata (TYPE_6__*,TYPE_8__*) ;

__attribute__((used)) static int decodePacket( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;



    if ( !pv->video_codec_opened )
    {
        AVCodecContext * context = avcodec_alloc_context3(pv->codec);
        if (setup_extradata(pv, context))
        {



            return HB_WORK_OK;
        }

        hb_avcodec_free_context(&pv->context);
        pv->context = context;

        pv->context->workaround_bugs = FF_BUG_AUTODETECT;
        pv->context->err_recognition = AV_EF_CRCCHECK;
        pv->context->error_concealment = FF_EC_GUESS_MVS|FF_EC_DEBLOCK;
        AVDictionary * av_opts = ((void*)0);
        av_dict_set( &av_opts, "refcounted_frames", "1", 0 );
        if (pv->title->flags & HBTF_NO_IDR)
        {
            av_dict_set( &av_opts, "flags", "output_corrupt", 0 );
        }


        if ( hb_avcodec_open( pv->context, pv->codec, &av_opts, pv->threads ) )
        {
            av_dict_free( &av_opts );
            hb_log( "decavcodecvWork: avcodec_open failed" );


            av_freep( &pv->context->extradata );
            pv->context->extradata_size = 0;
            return HB_WORK_OK;
        }
        pv->context->pkt_timebase.num = pv->title->video_timebase.num;
        pv->context->pkt_timebase.den = pv->title->video_timebase.den;
        av_dict_free( &av_opts );
        pv->video_codec_opened = 1;
    }

    decodeFrame(pv, &pv->packet_info);

    return HB_WORK_OK;
}
