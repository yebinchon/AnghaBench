
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gz_statep ;
typedef int * gzFile ;
struct TYPE_4__ {scalar_t__ mode; scalar_t__ err; int skip; scalar_t__ seek; } ;


 scalar_t__ GZ_WRITE ;
 int Z_FINISH ;
 scalar_t__ Z_OK ;
 int Z_STREAM_ERROR ;
 int gz_comp (TYPE_1__*,int) ;
 int gz_zero (TYPE_1__*,int ) ;

int gzflush(gzFile file, int flush)
{
    gz_statep state;


    if (file == ((void*)0))
        return -1;
    state = (gz_statep)file;


    if (state->mode != GZ_WRITE || state->err != Z_OK)
        return Z_STREAM_ERROR;


    if (flush < 0 || flush > Z_FINISH)
        return Z_STREAM_ERROR;


    if (state->seek) {
        state->seek = 0;
        if (gz_zero(state, state->skip) == -1)
            return -1;
    }


    gz_comp(state, flush);
    return state->err;
}
