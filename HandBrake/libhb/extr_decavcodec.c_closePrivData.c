
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__** reordered_hash; int resample; TYPE_3__* context; scalar_t__ parser; int frame; int decode_errors; int nframes; scalar_t__ job; int list; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_10__ {TYPE_1__* codec; } ;
struct TYPE_8__ {int name; } ;


 int REORDERED_HASH_SZ ;
 int av_frame_free (int *) ;
 int av_parser_close (scalar_t__) ;
 int close_video_filters (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int hb_audio_resample_free (int ) ;
 int hb_avcodec_free_context (TYPE_3__**) ;
 int hb_buffer_list_close (int *) ;
 int hb_log (char*,int ,int ,int ) ;
 int hb_qsv_uninit_dec (TYPE_3__*) ;

__attribute__((used)) static void closePrivData( hb_work_private_t ** ppv )
{
    hb_work_private_t * pv = *ppv;

    if ( pv )
    {
        hb_buffer_list_close(&pv->list);

        if ( pv->job && pv->context && pv->context->codec )
        {
            hb_log( "%s-decoder done: %u frames, %u decoder errors",
                    pv->context->codec->name, pv->nframes, pv->decode_errors);
        }
        av_frame_free(&pv->frame);
        close_video_filters(pv);
        if ( pv->parser )
        {
            av_parser_close(pv->parser);
        }
        if ( pv->context && pv->context->codec )
        {
            {
                hb_avcodec_free_context(&pv->context);
            }
        }
        if ( pv->context )
        {
            hb_avcodec_free_context(&pv->context);
        }
        hb_audio_resample_free(pv->resample);

        int ii;
        for (ii = 0; ii < REORDERED_HASH_SZ; ii++)
        {
            free(pv->reordered_hash[ii]);
        }
        free(pv);
    }
    *ppv = ((void*)0);
}
