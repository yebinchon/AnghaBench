
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* stream; } ;
typedef TYPE_4__ sync_delta_t ;
typedef TYPE_4__ hb_work_private_t ;
struct TYPE_15__ {TYPE_4__* private_data; } ;
typedef TYPE_6__ hb_work_object_t ;
struct TYPE_11__ {int list_current; } ;
struct TYPE_12__ {TYPE_1__ sanitizer; } ;
struct TYPE_13__ {TYPE_2__ subtitle; int scr_delay_queue; int in_queue; int delta_list; } ;


 int free (TYPE_4__*) ;
 int hb_buffer_list_close (int *) ;
 int hb_list_close (int *) ;
 int hb_list_empty (int *) ;
 TYPE_4__* hb_list_item (int ,int ) ;
 int hb_list_rem (int ,TYPE_4__*) ;

__attribute__((used)) static void syncSubtitleClose( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if (pv == ((void*)0))
    {
        return;
    }

    sync_delta_t * delta;
    while ((delta = hb_list_item(pv->stream->delta_list, 0)) != ((void*)0))
    {
        hb_list_rem(pv->stream->delta_list, delta);
        free(delta);
    }
    hb_list_close(&pv->stream->delta_list);
    hb_list_empty(&pv->stream->in_queue);
    hb_list_empty(&pv->stream->scr_delay_queue);
    hb_buffer_list_close(&pv->stream->subtitle.sanitizer.list_current);
    free(pv);
    w->private_data = ((void*)0);
}
