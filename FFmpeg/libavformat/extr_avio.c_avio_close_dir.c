
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* prot; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_11__ {TYPE_2__* url_context; } ;
struct TYPE_9__ {int (* url_close_dir ) (TYPE_2__*) ;} ;
typedef TYPE_3__ AVIODirContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_assert0 (TYPE_3__**) ;
 int av_freep (TYPE_3__**) ;
 int ffurl_close (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

int avio_close_dir(AVIODirContext **s)
{
    URLContext *h;

    av_assert0(s);
    if (!(*s) || !(*s)->url_context)
        return AVERROR(EINVAL);
    h = (*s)->url_context;
    h->prot->url_close_dir(h);
    ffurl_close(h);
    av_freep(s);
    *s = ((void*)0);
    return 0;
}
