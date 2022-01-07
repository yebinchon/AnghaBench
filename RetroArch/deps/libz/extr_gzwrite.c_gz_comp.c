
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef TYPE_3__* gz_statep ;
struct TYPE_9__ {scalar_t__ next; } ;
struct TYPE_10__ {unsigned int avail_in; unsigned int avail_out; scalar_t__ next_out; scalar_t__ next_in; } ;
struct TYPE_11__ {scalar_t__ size; TYPE_1__ x; scalar_t__ out; int fd; scalar_t__ direct; TYPE_2__ strm; } ;


 int Z_ERRNO ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_STREAM_ERROR ;
 int deflate (TYPE_2__*,int) ;
 int deflateReset (TYPE_2__*) ;
 int gz_error (TYPE_3__*,int,char*) ;
 int gz_init (TYPE_3__*) ;
 int write (int ,scalar_t__,unsigned int) ;
 char* zstrerror () ;

__attribute__((used)) static int gz_comp(gz_statep state, int flush)
{
    int ret, got;
    unsigned have;
    z_streamp strm = &(state->strm);


    if (state->size == 0 && gz_init(state) == -1)
        return -1;


    if (state->direct) {
        got = write(state->fd, strm->next_in, strm->avail_in);
        if (got < 0 || (unsigned)got != strm->avail_in) {
            gz_error(state, Z_ERRNO, zstrerror());
            return -1;
        }
        strm->avail_in = 0;
        return 0;
    }


    ret = Z_OK;
    do {


        if (strm->avail_out == 0 || (flush != Z_NO_FLUSH &&
            (flush != Z_FINISH || ret == Z_STREAM_END))) {
            have = (unsigned)(strm->next_out - state->x.next);
            if (have && ((got = write(state->fd, state->x.next, have)) < 0 ||
                         (unsigned)got != have)) {
                gz_error(state, Z_ERRNO, zstrerror());
                return -1;
            }
            if (strm->avail_out == 0) {
                strm->avail_out = state->size;
                strm->next_out = state->out;
            }
            state->x.next = strm->next_out;
        }


        have = strm->avail_out;
        ret = deflate(strm, flush);
        if (ret == Z_STREAM_ERROR) {
            gz_error(state, Z_STREAM_ERROR,
                      "internal error: deflate stream corrupt");
            return -1;
        }
        have -= strm->avail_out;
    } while (have);


    if (flush == Z_FINISH)
        deflateReset(strm);


    return 0;
}
