
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_6__ {scalar_t__ mode; int err; int fd; struct TYPE_6__* path; struct TYPE_6__* in; struct TYPE_6__* out; int strm; int direct; scalar_t__ size; int skip; scalar_t__ seek; } ;


 scalar_t__ GZ_WRITE ;
 int Z_ERRNO ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int close (int ) ;
 int deflateEnd (int *) ;
 int free (TYPE_1__*) ;
 int gz_comp (TYPE_1__*,int ) ;
 int gz_error (TYPE_1__*,int,int *) ;
 int gz_zero (TYPE_1__*,int ) ;

int gzclose_w(gzFile file)
{
    int ret = Z_OK;
    gz_statep state;


    if (file == ((void*)0))
        return Z_STREAM_ERROR;
    state = (gz_statep)file;


    if (state->mode != GZ_WRITE)
        return Z_STREAM_ERROR;


    if (state->seek) {
        state->seek = 0;
        if (gz_zero(state, state->skip) == -1)
            ret = state->err;
    }


    if (gz_comp(state, Z_FINISH) == -1)
        ret = state->err;
    if (state->size) {
        if (!state->direct) {
            (void)deflateEnd(&(state->strm));
            free(state->out);
        }
        free(state->in);
    }
    gz_error(state, Z_OK, ((void*)0));
    free(state->path);
    if (close(state->fd) == -1)
        ret = Z_ERRNO;
    free(state);
    return ret;
}
