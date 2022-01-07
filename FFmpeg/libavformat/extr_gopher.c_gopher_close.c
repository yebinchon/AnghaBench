
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int * hd; } ;
typedef TYPE_2__ GopherContext ;


 int ffurl_close (int *) ;

__attribute__((used)) static int gopher_close(URLContext *h)
{
    GopherContext *s = h->priv_data;
    if (s->hd) {
        ffurl_close(s->hd);
        s->hd = ((void*)0);
    }
    return 0;
}
