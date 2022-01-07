
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ file; TYPE_3__* context; int chapter_queue; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_8__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;
struct TYPE_9__ {scalar_t__ codec; } ;


 int avcodec_flush_buffers (TYPE_3__*) ;
 int fclose (scalar_t__) ;
 int free (TYPE_1__*) ;
 int hb_avcodec_free_context (TYPE_3__**) ;
 int hb_chapter_queue_close (int *) ;
 int hb_deep_log (int,char*) ;

void encavcodecClose( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if (pv == ((void*)0))
    {
        return;
    }
    hb_chapter_queue_close(&pv->chapter_queue);
    if( pv->context )
    {
        hb_deep_log( 2, "encavcodec: closing libavcodec" );
        if( pv->context->codec ) {
            avcodec_flush_buffers( pv->context );
        }
        hb_avcodec_free_context(&pv->context);
    }
    if( pv->file )
    {
        fclose( pv->file );
    }
    free( pv );
    w->private_data = ((void*)0);
}
