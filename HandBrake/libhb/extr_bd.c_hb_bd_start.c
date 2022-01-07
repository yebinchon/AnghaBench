
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int index; int duration; } ;
typedef TYPE_2__ hb_title_t ;
struct TYPE_9__ {int next_chap; int * stream; int h; scalar_t__ chapter; int bd; TYPE_1__** title_info; int duration; } ;
typedef TYPE_3__ hb_bd_t ;
struct TYPE_7__ {int idx; } ;
typedef int BD_EVENT ;


 int bd_get_event (int ,int *) ;
 int bd_select_title (int ,int ) ;
 int * hb_bd_stream_open (int ,TYPE_2__*) ;

int hb_bd_start( hb_bd_t * d, hb_title_t *title )
{
    BD_EVENT event;

    d->duration = title->duration;


    bd_select_title( d->bd, d->title_info[title->index - 1]->idx );
    bd_get_event( d->bd, &event );
    d->chapter = 0;
    d->next_chap = 1;
    d->stream = hb_bd_stream_open( d->h, title );
    if ( d->stream == ((void*)0) )
    {
        return 0;
    }
    return 1;
}
