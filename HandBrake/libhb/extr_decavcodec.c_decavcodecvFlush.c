
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* context; int codec; scalar_t__ parser; scalar_t__ video_codec_opened; TYPE_1__* title; int list; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_10__ {int codec_param; TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_11__ {int * codec; } ;
struct TYPE_8__ {int * opaque_priv; } ;


 int av_parser_close (scalar_t__) ;
 scalar_t__ av_parser_init (int ) ;
 TYPE_4__* avcodec_alloc_context3 (int ) ;
 int avcodec_flush_buffers (TYPE_4__*) ;
 int hb_avcodec_free_context (TYPE_4__**) ;
 int hb_buffer_list_close (int *) ;

__attribute__((used)) static void decavcodecvFlush( hb_work_object_t *w )
{
    hb_work_private_t *pv = w->private_data;

    if (pv->context != ((void*)0) && pv->context->codec != ((void*)0))
    {
        hb_buffer_list_close(&pv->list);
        if ( pv->title->opaque_priv == ((void*)0) )
        {
            pv->video_codec_opened = 0;
            hb_avcodec_free_context(&pv->context);
            if ( pv->parser )
            {
                av_parser_close(pv->parser);
            }
            pv->parser = av_parser_init( w->codec_param );
            pv->context = avcodec_alloc_context3( pv->codec );
        }
        else
        {
            avcodec_flush_buffers( pv->context );
        }
    }
}
