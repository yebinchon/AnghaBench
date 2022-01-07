
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_5__ {scalar_t__ read_packet; TYPE_1__* opaque; } ;
struct TYPE_4__ {int * h; } ;
typedef TYPE_1__ AVIOInternal ;
typedef TYPE_2__ AVIOContext ;


 scalar_t__ io_read_packet ;

URLContext* ffio_geturlcontext(AVIOContext *s)
{
    AVIOInternal *internal;
    if (!s)
        return ((void*)0);

    internal = s->opaque;
    if (internal && s->read_packet == io_read_packet)
        return internal->h;
    else
        return ((void*)0);
}
