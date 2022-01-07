
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef TYPE_3__* gz_statep ;
struct TYPE_7__ {unsigned char* next; } ;
struct TYPE_8__ {unsigned char* next_out; int avail_out; void* opaque; void* zfree; void* zalloc; } ;
struct TYPE_9__ {unsigned char* in; unsigned char* out; TYPE_1__ x; int size; int direct; int want; int strategy; int level; TYPE_2__ strm; } ;


 int DEF_MEM_LEVEL ;
 scalar_t__ MAX_WBITS ;
 int Z_DEFLATED ;
 int Z_MEM_ERROR ;
 void* Z_NULL ;
 int Z_OK ;
 int deflateInit2 (TYPE_2__*,int ,int ,scalar_t__,int ,int ) ;
 int free (unsigned char*) ;
 int gz_error (TYPE_3__*,int ,char*) ;
 scalar_t__ malloc (int ) ;

__attribute__((used)) static int gz_init(gz_statep state)
{
    int ret;
    z_streamp strm = &(state->strm);


    state->in = (unsigned char *)malloc(state->want);
    if (state->in == ((void*)0)) {
        gz_error(state, Z_MEM_ERROR, "out of memory");
        return -1;
    }


    if (!state->direct) {

        state->out = (unsigned char *)malloc(state->want);
        if (state->out == ((void*)0)) {
            free(state->in);
            gz_error(state, Z_MEM_ERROR, "out of memory");
            return -1;
        }


        strm->zalloc = Z_NULL;
        strm->zfree = Z_NULL;
        strm->opaque = Z_NULL;
        ret = deflateInit2(strm, state->level, Z_DEFLATED,
                           MAX_WBITS + 16, DEF_MEM_LEVEL, state->strategy);
        if (ret != Z_OK) {
            free(state->out);
            free(state->in);
            gz_error(state, Z_MEM_ERROR, "out of memory");
            return -1;
        }
    }


    state->size = state->want;


    if (!state->direct) {
        strm->avail_out = state->size;
        strm->next_out = state->out;
        state->x.next = strm->next_out;
    }
    return 0;
}
