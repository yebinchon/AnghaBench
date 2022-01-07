
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef TYPE_2__* gz_statep ;
typedef int * gzFile ;
struct TYPE_6__ {scalar_t__ avail_in; } ;
struct TYPE_7__ {scalar_t__ mode; scalar_t__ err; int level; int strategy; scalar_t__ size; int skip; scalar_t__ seek; TYPE_1__ strm; } ;


 scalar_t__ GZ_WRITE ;
 scalar_t__ Z_OK ;
 int Z_PARTIAL_FLUSH ;
 int Z_STREAM_ERROR ;
 int deflateParams (TYPE_1__*,int,int) ;
 int gz_comp (TYPE_2__*,int ) ;
 int gz_zero (TYPE_2__*,int ) ;

int gzsetparams(gzFile file, int level, int strategy)
{
    gz_statep state;
    z_streamp strm;


    if (file == ((void*)0))
        return Z_STREAM_ERROR;
    state = (gz_statep)file;
    strm = &(state->strm);


    if (state->mode != GZ_WRITE || state->err != Z_OK)
        return Z_STREAM_ERROR;


    if (level == state->level && strategy == state->strategy)
        return Z_OK;


    if (state->seek) {
        state->seek = 0;
        if (gz_zero(state, state->skip) == -1)
            return -1;
    }


    if (state->size) {

        if (strm->avail_in && gz_comp(state, Z_PARTIAL_FLUSH) == -1)
            return state->err;
        deflateParams(strm, level, strategy);
    }
    state->level = level;
    state->strategy = strategy;
    return Z_OK;
}
