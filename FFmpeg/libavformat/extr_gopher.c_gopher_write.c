
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int hd; } ;
typedef TYPE_2__ GopherContext ;


 int ffurl_write (int ,int const*,int) ;

__attribute__((used)) static int gopher_write(URLContext *h, const uint8_t *buf, int size)
{
    GopherContext *s = h->priv_data;
    return ffurl_write(s->hd, buf, size);
}
