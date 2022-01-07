
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items_alloc; void* items; } ;
typedef TYPE_1__ hb_list_t ;


 int HB_LIST_DEFAULT_SIZE ;
 void* calloc (int,int) ;

hb_list_t * hb_list_init()
{
    hb_list_t * l;

    l = calloc( sizeof( hb_list_t ), 1 );
    l->items = calloc( HB_LIST_DEFAULT_SIZE * sizeof( void * ), 1 );
    l->items_alloc = HB_LIST_DEFAULT_SIZE;

    return l;
}
