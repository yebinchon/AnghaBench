
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ next_in; scalar_t__ avail_in; int avail_out; int * next_out; int * opaque; int * zfree; int * zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ enc; scalar_t__ enc_size; scalar_t__ sl_begin; scalar_t__ sl_end; } ;
typedef TYPE_2__ Block ;


 int Z_FINISH ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int) ;

__attribute__((used)) static int encode_zlibprime(Block * b, Block * prime, uint8_t * buf,
                            int *buf_size, int comp)
{
    z_stream s;
    int res;
    s.zalloc = ((void*)0);
    s.zfree = ((void*)0);
    s.opaque = ((void*)0);
    res = deflateInit(&s, comp);
    if (res < 0)
        return -1;

    s.next_in = prime->enc;
    s.avail_in = prime->enc_size;
    while (s.avail_in > 0) {
        s.next_out = buf;
        s.avail_out = *buf_size;
        res = deflate(&s, Z_SYNC_FLUSH);
        if (res < 0)
            return -1;
    }

    s.next_in = b->sl_begin;
    s.avail_in = b->sl_end - b->sl_begin;
    s.next_out = buf;
    s.avail_out = *buf_size;
    res = deflate(&s, Z_FINISH);
    deflateEnd(&s);
    *buf_size -= s.avail_out;
    if (res != Z_STREAM_END)
        return -1;
    return 0;
}
