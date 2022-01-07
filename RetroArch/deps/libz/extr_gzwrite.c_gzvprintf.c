
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef int va_list ;
typedef TYPE_3__* gz_statep ;
typedef int * gzFile ;
struct TYPE_7__ {int pos; } ;
struct TYPE_8__ {unsigned int avail_in; scalar_t__* next_in; } ;
struct TYPE_9__ {scalar_t__ mode; scalar_t__ err; scalar_t__* in; TYPE_1__ x; scalar_t__ size; int skip; scalar_t__ seek; TYPE_2__ strm; } ;


 scalar_t__ GZ_WRITE ;
 int Z_NO_FLUSH ;
 scalar_t__ Z_OK ;
 int gz_comp (TYPE_3__*,int ) ;
 int gz_init (TYPE_3__*) ;
 int gz_zero (TYPE_3__*,int ) ;
 int strlen (char*) ;
 int vsnprintf (char*,int,char const*,int ) ;
 int vsprintf (char*,char const*,int ) ;

int gzvprintf(gzFile file, const char *format, va_list va)
{
    int size, len;
    gz_statep state;
    z_streamp strm;


    if (file == ((void*)0))
        return -1;
    state = (gz_statep)file;
    strm = &(state->strm);


    if (state->mode != GZ_WRITE || state->err != Z_OK)
        return 0;


    if (state->size == 0 && gz_init(state) == -1)
        return 0;


    if (state->seek) {
        state->seek = 0;
        if (gz_zero(state, state->skip) == -1)
            return 0;
    }


    if (strm->avail_in && gz_comp(state, Z_NO_FLUSH) == -1)
        return 0;


    size = (int)(state->size);
    state->in[size - 1] = 0;
    len = vsnprintf((char *)(state->in), size, format, va);




    if (len <= 0 || len >= (int)size || state->in[size - 1] != 0)
        return 0;


    strm->avail_in = (unsigned)len;
    strm->next_in = state->in;
    state->x.pos += len;
    return len;
}
