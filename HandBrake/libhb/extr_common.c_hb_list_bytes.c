
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_list_t ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ hb_buffer_t ;


 int hb_list_count (int *) ;
 TYPE_1__* hb_list_item (int *,int) ;

int hb_list_bytes( hb_list_t * l )
{
    hb_buffer_t * buf;
    int ret;
    int i;

    ret = 0;
    for( i = 0; i < hb_list_count( l ); i++ )
    {
        buf = hb_list_item( l, i );
        ret += buf->size - buf->offset;
    }

    return ret;
}
