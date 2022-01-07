
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int alloc; int * next; int * data; } ;
typedef TYPE_1__ hb_buffer_t ;


 int hb_buffer_close (TYPE_1__**) ;
 TYPE_1__* hb_buffer_init (int) ;
 int hb_buffer_swap_copy (TYPE_1__*,TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

void hb_buffer_reduce( hb_buffer_t * b, int size )
{

    if ( size < b->alloc / 8 || b->data == ((void*)0) )
    {
        hb_buffer_t * tmp = hb_buffer_init( size );

        hb_buffer_swap_copy( b, tmp );
        memcpy( b->data, tmp->data, size );
        tmp->next = ((void*)0);
        hb_buffer_close( &tmp );
    }
}
