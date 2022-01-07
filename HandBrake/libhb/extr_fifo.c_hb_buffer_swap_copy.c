
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int size; int alloc; int * data; } ;
typedef TYPE_1__ hb_buffer_t ;



void hb_buffer_swap_copy( hb_buffer_t *src, hb_buffer_t *dst )
{
    uint8_t *data = dst->data;
    int size = dst->size;
    int alloc = dst->alloc;

    *dst = *src;

    src->data = data;
    src->size = size;
    src->alloc = alloc;
}
