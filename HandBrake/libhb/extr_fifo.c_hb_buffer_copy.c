
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ size; TYPE_1__ s; int f; int data; } ;
typedef TYPE_2__ hb_buffer_t ;


 scalar_t__ FRAME_BUF ;
 int hb_buffer_init_planes (TYPE_2__*) ;
 int memcpy (int ,int ,scalar_t__) ;

int hb_buffer_copy(hb_buffer_t * dst, const hb_buffer_t * src)
{
    if (src == ((void*)0) || dst == ((void*)0))
        return -1;

    if ( dst->size < src->size )
        return -1;

    memcpy( dst->data, src->data, src->size );
    dst->s = src->s;
    dst->f = src->f;
    if (dst->s.type == FRAME_BUF)
        hb_buffer_init_planes(dst);

    return 0;
}
