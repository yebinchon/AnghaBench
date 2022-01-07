
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_7__ {TYPE_1__* opaque; } ;
struct TYPE_6__ {int * h; } ;
typedef TYPE_1__ AVIOInternal ;
typedef TYPE_2__ AVIOContext ;


 int ffio_fdopen (TYPE_2__**,int *) ;
 int ffurl_accept (int *,int **) ;

int avio_accept(AVIOContext *s, AVIOContext **c)
{
    int ret;
    AVIOInternal *internal = s->opaque;
    URLContext *sc = internal->h;
    URLContext *cc = ((void*)0);
    ret = ffurl_accept(sc, &cc);
    if (ret < 0)
        return ret;
    return ffio_fdopen(c, cc);
}
