
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int pos; int fuzz; void* filesize; void* fuzz_size; } ;
typedef TYPE_1__ IOContext ;


 int AVERROR_EOF ;
 void* FFMAX (void*,int) ;
 void* FFMIN (int,void*) ;
 int memcpy (int *,int,int) ;

__attribute__((used)) static int io_read(void *opaque, uint8_t *buf, int buf_size)
{
    IOContext *c = opaque;
    int size = FFMIN(buf_size, c->fuzz_size);

    if (!c->fuzz_size) {
        c->filesize = FFMIN(c->pos, c->filesize);
        return AVERROR_EOF;
    }

    memcpy(buf, c->fuzz, size);
    c->fuzz += size;
    c->fuzz_size -= size;
    c->pos += size;
    c->filesize = FFMAX(c->filesize, c->pos);

    return size;
}
