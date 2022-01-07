
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct MD5Context {int md5; } ;
struct TYPE_3__ {struct MD5Context* priv_data; } ;
typedef TYPE_1__ URLContext ;


 int av_md5_update (int ,unsigned char const*,int) ;

__attribute__((used)) static int md5_write(URLContext *h, const unsigned char *buf, int size)
{
    struct MD5Context *c = h->priv_data;
    av_md5_update(c->md5, buf, size);
    return size;
}
