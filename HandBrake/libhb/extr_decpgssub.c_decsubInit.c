
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int discard_subtitle; TYPE_6__* context; int * job; int last_pts; scalar_t__ seen_forced_sub; int list_pass; int list; } ;
typedef TYPE_4__ hb_work_private_t ;
struct TYPE_15__ {TYPE_3__* subtitle; TYPE_4__* private_data; } ;
typedef TYPE_5__ hb_work_object_t ;
typedef int hb_job_t ;
struct TYPE_11__ {int den; int num; } ;
struct TYPE_16__ {TYPE_1__ pkt_timebase; int * codec; } ;
struct TYPE_12__ {int den; int num; } ;
struct TYPE_13__ {TYPE_2__ timebase; } ;
typedef int AVDictionary ;
typedef TYPE_6__ AVCodecContext ;
typedef int AVCodec ;


 int AV_CODEC_ID_HDMV_PGS_SUBTITLE ;
 int AV_NOPTS_VALUE ;
 int av_dict_free (int **) ;
 TYPE_6__* avcodec_alloc_context3 (int *) ;
 int * avcodec_find_decoder (int ) ;
 TYPE_4__* calloc (int,int) ;
 scalar_t__ hb_avcodec_open (TYPE_6__*,int *,int **,int ) ;
 int hb_buffer_list_clear (int *) ;
 int hb_log (char*) ;

__attribute__((used)) static int decsubInit( hb_work_object_t * w, hb_job_t * job )
{
    AVCodec *codec = avcodec_find_decoder( AV_CODEC_ID_HDMV_PGS_SUBTITLE );
    AVCodecContext *context = avcodec_alloc_context3( codec );
    context->codec = codec;

    hb_work_private_t * pv;
    pv = calloc( 1, sizeof( hb_work_private_t ) );
    w->private_data = pv;

    hb_buffer_list_clear(&pv->list);
    hb_buffer_list_clear(&pv->list_pass);
    pv->discard_subtitle = 1;
    pv->seen_forced_sub = 0;
    pv->last_pts = AV_NOPTS_VALUE;
    pv->context = context;
    context->pkt_timebase.num = w->subtitle->timebase.num;
    context->pkt_timebase.den = w->subtitle->timebase.den;
    pv->job = job;


    AVDictionary * av_opts = ((void*)0);


    if (hb_avcodec_open(pv->context, codec, &av_opts, 0))
    {
        av_dict_free( &av_opts );
        hb_log("decsubInit: avcodec_open failed");
        return 1;
    }
    av_dict_free( &av_opts );


    return 0;
}
