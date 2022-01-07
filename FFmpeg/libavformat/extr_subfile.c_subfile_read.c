
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {scalar_t__ end; scalar_t__ pos; int h; } ;
typedef TYPE_2__ SubfileContext ;


 int AVERROR_EOF ;
 int FFMIN (int,scalar_t__) ;
 int ffurl_read (int ,unsigned char*,int) ;

__attribute__((used)) static int subfile_read(URLContext *h, unsigned char *buf, int size)
{
    SubfileContext *c = h->priv_data;
    int64_t rest = c->end - c->pos;
    int ret;

    if (rest <= 0)
        return AVERROR_EOF;
    size = FFMIN(size, rest);
    ret = ffurl_read(c->h, buf, size);
    if (ret >= 0)
        c->pos += ret;
    return ret;
}
