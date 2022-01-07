
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* items; } ;
typedef TYPE_1__ hb_list_t ;


 int free (TYPE_1__*) ;

void hb_list_close( hb_list_t ** _l )
{
    hb_list_t * l = *_l;

    if (l == ((void*)0))
    {
        return;
    }

    free( l->items );
    free( l );

    *_l = ((void*)0);
}
