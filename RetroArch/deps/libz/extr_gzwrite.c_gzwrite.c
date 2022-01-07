
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef char const* voidpc ;
typedef TYPE_3__* gz_statep ;
typedef int * gzFile ;
struct TYPE_8__ {unsigned int pos; } ;
struct TYPE_9__ {scalar_t__ avail_in; scalar_t__ next_in; } ;
struct TYPE_10__ {scalar_t__ mode; scalar_t__ err; scalar_t__ size; scalar_t__ in; TYPE_1__ x; int skip; scalar_t__ seek; TYPE_2__ strm; } ;
typedef int Bytef ;


 scalar_t__ GZ_WRITE ;
 int Z_DATA_ERROR ;
 int Z_NO_FLUSH ;
 scalar_t__ Z_OK ;
 int gz_comp (TYPE_3__*,int ) ;
 int gz_error (TYPE_3__*,int ,char*) ;
 int gz_init (TYPE_3__*) ;
 int gz_zero (TYPE_3__*,int ) ;
 int memcpy (scalar_t__,char const*,unsigned int) ;

int gzwrite(gzFile file, voidpc buf, unsigned len)
{
    unsigned put = len;
    gz_statep state;
    z_streamp strm;


    if (file == ((void*)0))
        return 0;
    state = (gz_statep)file;
    strm = &(state->strm);


    if (state->mode != GZ_WRITE || state->err != Z_OK)
        return 0;



    if ((int)len < 0) {
        gz_error(state, Z_DATA_ERROR, "requested length does not fit in int");
        return 0;
    }


    if (len == 0)
        return 0;


    if (state->size == 0 && gz_init(state) == -1)
        return 0;


    if (state->seek) {
        state->seek = 0;
        if (gz_zero(state, state->skip) == -1)
            return 0;
    }


    if (len < state->size) {

        do {
            unsigned have, copy;

            if (strm->avail_in == 0)
                strm->next_in = state->in;
            have = (unsigned)((strm->next_in + strm->avail_in) - state->in);
            copy = state->size - have;
            if (copy > len)
                copy = len;
            memcpy(state->in + have, buf, copy);
            strm->avail_in += copy;
            state->x.pos += copy;
            buf = (const char *)buf + copy;
            len -= copy;
            if (len && gz_comp(state, Z_NO_FLUSH) == -1)
                return 0;
        } while (len);
    }
    else {

        if (strm->avail_in && gz_comp(state, Z_NO_FLUSH) == -1)
            return 0;


        strm->avail_in = len;
        strm->next_in = (Bytef *)buf;
        state->x.pos += len;
        if (gz_comp(state, Z_NO_FLUSH) == -1)
            return 0;
    }


    return (int)put;
}
