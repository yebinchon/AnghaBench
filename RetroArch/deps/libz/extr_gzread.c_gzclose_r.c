
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_4__ {scalar_t__ mode; int err; int fd; struct TYPE_4__* path; struct TYPE_4__* in; struct TYPE_4__* out; int strm; scalar_t__ size; } ;


 scalar_t__ GZ_READ ;
 int Z_BUF_ERROR ;
 int Z_ERRNO ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int close (int ) ;
 int free (TYPE_1__*) ;
 int gz_error (TYPE_1__*,int,int *) ;
 int inflateEnd (int *) ;

int gzclose_r(gzFile file)
{
   int ret, err;
   gz_statep state;


   if (file == ((void*)0))
      return Z_STREAM_ERROR;
   state = (gz_statep)file;


   if (state->mode != GZ_READ)
      return Z_STREAM_ERROR;


   if (state->size) {
      inflateEnd(&(state->strm));
      free(state->out);
      free(state->in);
   }
   err = state->err == Z_BUF_ERROR ? Z_BUF_ERROR : Z_OK;
   gz_error(state, Z_OK, ((void*)0));
   free(state->path);
   ret = close(state->fd);
   free(state);
   return ret ? Z_ERRNO : err;
}
