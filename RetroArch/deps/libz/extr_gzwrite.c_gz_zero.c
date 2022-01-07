
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef scalar_t__ z_off64_t ;
typedef TYPE_3__* gz_statep ;
struct TYPE_6__ {unsigned int pos; } ;
struct TYPE_7__ {unsigned int avail_in; int next_in; } ;
struct TYPE_8__ {unsigned int size; TYPE_1__ x; int in; TYPE_2__ strm; } ;


 scalar_t__ GT_OFF (unsigned int) ;
 int Z_NO_FLUSH ;
 int gz_comp (TYPE_3__*,int ) ;
 int memset (int ,int ,unsigned int) ;

__attribute__((used)) static int gz_zero(gz_statep state, z_off64_t len)
{
    int first;
    unsigned n;
    z_streamp strm = &(state->strm);


    if (strm->avail_in && gz_comp(state, Z_NO_FLUSH) == -1)
        return -1;


    first = 1;
    while (len) {
        n = GT_OFF(state->size) || (z_off64_t)state->size > len ?
            (unsigned)len : state->size;
        if (first) {
            memset(state->in, 0, n);
            first = 0;
        }
        strm->avail_in = n;
        strm->next_in = state->in;
        state->x.pos += n;
        if (gz_comp(state, Z_NO_FLUSH) == -1)
            return -1;
        len -= n;
    }
    return 0;
}
