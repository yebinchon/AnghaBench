
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_2__ {scalar_t__ mode; int err; char const* msg; } ;


 scalar_t__ GZ_READ ;
 scalar_t__ GZ_WRITE ;
 int Z_MEM_ERROR ;

const char * gzerror(gzFile file, int *errnum)
{
   gz_statep state;


   if (file == ((void*)0))
      return ((void*)0);
   state = (gz_statep)file;
   if (state->mode != GZ_READ && state->mode != GZ_WRITE)
      return ((void*)0);


   if (errnum != ((void*)0))
      *errnum = state->err;
   return state->err == Z_MEM_ERROR ? "out of memory" :
      (state->msg == ((void*)0) ? "" : state->msg);
}
