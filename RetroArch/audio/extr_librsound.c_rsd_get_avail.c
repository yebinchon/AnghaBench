
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t buffer_size; } ;
typedef TYPE_1__ rsound_t ;


 int retro_assert (int ) ;
 int rsnd_get_ptr (TYPE_1__*) ;

size_t rsd_get_avail(rsound_t *rd)
{
   retro_assert(rd != ((void*)0));
   int ptr;
   ptr = rsnd_get_ptr(rd);
   return rd->buffer_size - ptr;
}
