
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_3__ {scalar_t__ mode; scalar_t__ err; int start; int fd; } ;


 scalar_t__ GZ_READ ;
 int LSEEK (int ,int ,int ) ;
 int SEEK_SET ;
 scalar_t__ Z_BUF_ERROR ;
 scalar_t__ Z_OK ;
 int gz_reset (TYPE_1__*) ;

int gzrewind(gzFile file)
{
   gz_statep state;


   if (file == ((void*)0))
      return -1;
   state = (gz_statep)file;


   if (state->mode != GZ_READ ||
         (state->err != Z_OK && state->err != Z_BUF_ERROR))
      return -1;


   if (LSEEK(state->fd, state->start, SEEK_SET) == -1)
      return -1;
   gz_reset(state);
   return 0;
}
