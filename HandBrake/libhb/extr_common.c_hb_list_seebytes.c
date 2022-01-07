
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int hb_list_t ;
struct TYPE_3__ {size_t offset; int * data; scalar_t__ size; } ;
typedef TYPE_1__ hb_buffer_t ;


 int MIN (scalar_t__,int) ;
 TYPE_1__* hb_list_item (int *,int) ;
 int memcpy (int *,int *,int) ;

void hb_list_seebytes( hb_list_t * l, uint8_t * dst, int size )
{
    hb_buffer_t * buf;
    int copied;
    int copying;
    int i;

    for( i = 0, copied = 0; copied < size; i++ )
    {
        buf = hb_list_item( l, i );
        copying = MIN( buf->size - buf->offset, size - copied );
        memcpy( &dst[copied], &buf->data[buf->offset], copying );
        copied += copying;
    }
}
