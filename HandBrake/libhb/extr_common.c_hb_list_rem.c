
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items_count; void** items; } ;
typedef TYPE_1__ hb_list_t ;


 int memmove (void**,void**,int) ;

void hb_list_rem( hb_list_t * l, void * p )
{
    int i;


    for( i = 0; i < l->items_count; i++ )
    {
        if( l->items[i] == p )
        {

            memmove( &l->items[i], &l->items[i+1],
                     ( l->items_count - i - 1 ) * sizeof( void * ) );

            (l->items_count)--;
            break;
        }
    }
}
