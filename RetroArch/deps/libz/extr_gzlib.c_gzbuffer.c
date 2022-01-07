
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ size; unsigned int want; } ;


 scalar_t__ GZ_READ ;
 scalar_t__ GZ_WRITE ;

int gzbuffer(gzFile file, unsigned size)
{
   gz_statep state;


   if (file == ((void*)0))
      return -1;
   state = (gz_statep)file;
   if (state->mode != GZ_READ && state->mode != GZ_WRITE)
      return -1;


   if (state->size != 0)
      return -1;


   if (size < 2)
      size = 2;
   state->want = size;
   return 0;
}
