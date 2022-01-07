
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int size; int * buffer; } ;
typedef TYPE_1__ DynBuffer ;
typedef TYPE_2__ AVIOContext ;


 int avio_flush (TYPE_2__*) ;

int avio_get_dyn_buf(AVIOContext *s, uint8_t **pbuffer)
{
    DynBuffer *d;

    if (!s) {
        *pbuffer = ((void*)0);
        return 0;
    }

    avio_flush(s);

    d = s->opaque;
    *pbuffer = d->buffer;

    return d->size;
}
