
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* open ) (char const*,unsigned int) ;} ;


 TYPE_1__* internal_nbio ;
 void* stub1 (char const*,unsigned int) ;

void *nbio_open(const char * filename, unsigned mode)
{
   return internal_nbio->open(filename, mode);
}
