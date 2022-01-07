
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_buffer_t ;


 int * hb_buffer_init_internal (int) ;

hb_buffer_t * hb_buffer_init( int size )
{
    return hb_buffer_init_internal(size);
}
