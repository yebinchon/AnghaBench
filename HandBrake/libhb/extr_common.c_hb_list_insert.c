
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items_count; int items_alloc; void** items; } ;
typedef TYPE_1__ hb_list_t ;


 scalar_t__ HB_LIST_DEFAULT_SIZE ;
 int memmove (void**,void**,int) ;
 void** realloc (void**,int) ;

void hb_list_insert( hb_list_t * l, int pos, void * p )
{
    if( !p )
    {
        return;
    }

    if( l->items_count == l->items_alloc )
    {

        l->items_alloc += HB_LIST_DEFAULT_SIZE;
        l->items = realloc( l->items,
                                   l->items_alloc * sizeof( void * ) );
    }

    if ( l->items_count != pos )
    {

        memmove( &l->items[pos+1], &l->items[pos],
                 ( l->items_count - pos ) * sizeof( void * ) );
    }


    l->items[pos] = p;
    (l->items_count)++;
}
