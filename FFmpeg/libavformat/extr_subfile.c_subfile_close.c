
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int h; } ;
typedef TYPE_2__ SubfileContext ;


 int ffurl_close (int ) ;

__attribute__((used)) static int subfile_close(URLContext *h)
{
    SubfileContext *c = h->priv_data;
    return ffurl_close(c->h);
}
