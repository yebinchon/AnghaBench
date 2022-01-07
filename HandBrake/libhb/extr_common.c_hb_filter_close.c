
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int settings; struct TYPE_4__* sub_filter; } ;
typedef TYPE_1__ hb_filter_object_t ;


 int free (TYPE_1__*) ;
 int hb_value_free (int *) ;

void hb_filter_close( hb_filter_object_t ** _f )
{
    hb_filter_object_t * f = *_f;

    if (f == ((void*)0))
    {
        return;
    }
    hb_filter_close(&f->sub_filter);
    hb_value_free(&f->settings);

    free( f );
    *_f = ((void*)0);
}
