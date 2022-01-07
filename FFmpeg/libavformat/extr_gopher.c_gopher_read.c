
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


 int ffurl_read (int ,int *,int) ;

__attribute__((used)) static int gopher_read(URLContext *h, uint8_t *buf, int size)
{
    GopherContext *s = h->priv_data;
    int len = ffurl_read(s->hd, buf, size);
    return len;
}
