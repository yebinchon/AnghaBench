
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_3__ {scalar_t__ mode; scalar_t__ past; scalar_t__ eof; } ;


 scalar_t__ GZ_READ ;
 scalar_t__ GZ_WRITE ;
 int Z_OK ;
 int gz_error (TYPE_1__*,int ,int *) ;

void gzclearerr(gzFile file)
{
   gz_statep state;


   if (file == ((void*)0))
      return;
   state = (gz_statep)file;
   if (state->mode != GZ_READ && state->mode != GZ_WRITE)
      return;


   if (state->mode == GZ_READ) {
      state->eof = 0;
      state->past = 0;
   }
   gz_error(state, Z_OK, ((void*)0));
}
