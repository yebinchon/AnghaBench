
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {int size; int qsv_details; TYPE_1__ s; int f; int * data; } ;
typedef TYPE_2__ hb_buffer_t ;


 scalar_t__ FRAME_BUF ;
 TYPE_2__* hb_buffer_init (int) ;
 int hb_buffer_init_planes (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;

hb_buffer_t * hb_buffer_dup( const hb_buffer_t * src )
{

    hb_buffer_t * buf;

    if ( src == ((void*)0) )
        return ((void*)0);

    buf = hb_buffer_init( src->size );
    if ( buf )
    {
        memcpy( buf->data, src->data, src->size );
        buf->s = src->s;
        buf->f = src->f;
        if ( buf->s.type == FRAME_BUF )
            hb_buffer_init_planes( buf );
    }





    return buf;
}
