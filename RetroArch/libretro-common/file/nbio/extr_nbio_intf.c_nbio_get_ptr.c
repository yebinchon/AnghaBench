
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* get_ptr ) (void*,size_t*) ;} ;


 TYPE_1__* internal_nbio ;
 void* stub1 (void*,size_t*) ;

void *nbio_get_ptr(void *data, size_t* len)
{
   return internal_nbio->get_ptr(data, len);
}
