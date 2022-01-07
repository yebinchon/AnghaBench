
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* stream; } ;
typedef TYPE_3__ sync_delta_t ;
typedef TYPE_3__ hb_work_private_t ;
struct TYPE_13__ {TYPE_3__* private_data; } ;
typedef TYPE_5__ hb_work_object_t ;
struct TYPE_10__ {scalar_t__ resample; } ;
struct TYPE_11__ {int scr_delay_queue; int in_queue; int delta_list; TYPE_1__ audio; } ;


 int free (TYPE_3__*) ;
 int hb_audio_resample_free (scalar_t__) ;
 int hb_list_close (int *) ;
 int hb_list_empty (int *) ;
 TYPE_3__* hb_list_item (int ,int ) ;
 int hb_list_rem (int ,TYPE_3__*) ;

__attribute__((used)) static void syncAudioClose( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if (pv == ((void*)0))
    {
        return;
    }


    if (pv->stream->audio.resample)
    {
        hb_audio_resample_free(pv->stream->audio.resample);
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
    free(pv);
    w->private_data = ((void*)0);
}
