
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {scalar_t__ hd; } ;
typedef TYPE_2__ IcecastContext ;


 int ffurl_close (scalar_t__) ;

__attribute__((used)) static int icecast_close(URLContext *h)
{
    IcecastContext *s = h->priv_data;
    if (s->hd)
        ffurl_close(s->hd);
    return 0;
}
