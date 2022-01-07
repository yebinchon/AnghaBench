
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* opaque; } ;
struct TYPE_7__ {int size; } ;
typedef TYPE_1__ DynBuffer ;
typedef TYPE_2__ AVIOContext ;


 int av_free (TYPE_1__*) ;
 int avio_context_free (TYPE_2__**) ;
 int avio_flush (TYPE_2__*) ;

int ffio_close_null_buf(AVIOContext *s)
{
    DynBuffer *d = s->opaque;
    int size;

    avio_flush(s);

    size = d->size;
    av_free(d);

    avio_context_free(&s);

    return size;
}
