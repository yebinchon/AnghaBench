
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_5__ {TYPE_1__* opaque; } ;
struct TYPE_4__ {int * h; } ;
typedef TYPE_1__ AVIOInternal ;
typedef TYPE_2__ AVIOContext ;


 int ffurl_handshake (int *) ;

int avio_handshake(AVIOContext *c)
{
    AVIOInternal *internal = c->opaque;
    URLContext *cc = internal->h;
    return ffurl_handshake(cc);
}
