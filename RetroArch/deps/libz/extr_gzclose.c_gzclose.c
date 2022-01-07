
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ GZ_READ ;
 int Z_STREAM_ERROR ;
 int gzclose_r (int *) ;
 int gzclose_w (int *) ;

int gzclose(gzFile file)
{

   gz_statep state;

   if (file == ((void*)0))
      return Z_STREAM_ERROR;
   state = (gz_statep)file;

   return state->mode == GZ_READ ? gzclose_r(file) : gzclose_w(file);



}
