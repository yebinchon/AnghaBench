
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int * h; struct TYPE_5__* next; } ;
typedef TYPE_1__ hb_work_object_t ;
typedef int hb_handle_t ;


 TYPE_1__* hb_objects ;
 TYPE_1__* malloc (int) ;

hb_work_object_t * hb_get_work( hb_handle_t *h, int id )
{
    hb_work_object_t * w;
    for( w = hb_objects; w; w = w->next )
    {
        if( w->id == id )
        {
            hb_work_object_t *wc = malloc( sizeof(*w) );
            *wc = *w;
            wc->h = h;
            return wc;
        }
    }
    return ((void*)0);
}
