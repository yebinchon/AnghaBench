
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct MD5Context {int md5; } ;
struct TYPE_3__ {struct MD5Context* priv_data; } ;
typedef TYPE_1__ URLContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;
 int EINVAL ;
 int ENOMEM ;
 int av_md5_alloc () ;
 int av_md5_init (int ) ;

__attribute__((used)) static int md5_open(URLContext *h, const char *filename, int flags)
{
    struct MD5Context *c = h->priv_data;

    if (!(flags & AVIO_FLAG_WRITE))
        return AVERROR(EINVAL);

    c->md5 = av_md5_alloc();
    if (!c->md5)
        return AVERROR(ENOMEM);
    av_md5_init(c->md5);

    return 0;
}
