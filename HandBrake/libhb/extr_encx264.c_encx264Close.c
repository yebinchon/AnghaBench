
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* filename; int x264; TYPE_1__* api; int chapter_queue; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_8__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_6__ {int (* encoder_close ) (int ) ;} ;


 int free (TYPE_2__*) ;
 int hb_chapter_queue_close (int *) ;
 int stub1 (int ) ;

void encx264Close( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if (pv == ((void*)0))
    {

        return;
    }

    hb_chapter_queue_close(&pv->chapter_queue);

    pv->api->encoder_close( pv->x264 );
    free( pv->filename );
    free( pv );
    w->private_data = ((void*)0);
}
