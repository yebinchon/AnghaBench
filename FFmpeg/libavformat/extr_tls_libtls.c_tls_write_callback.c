
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls {int dummy; } ;
typedef int ssize_t ;
typedef int URLContext ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int EAGAIN ;
 int TLS_WANT_POLLOUT ;
 int ffurl_write (int *,void const*,size_t) ;

__attribute__((used)) static ssize_t tls_write_callback(struct tls *ctx, const void *buf, size_t buflen, void *cb_arg)
{
    URLContext *h = (URLContext*) cb_arg;
    int ret = ffurl_write(h, buf, buflen);
    if (ret == AVERROR(EAGAIN))
        return TLS_WANT_POLLOUT;
    else if (ret == AVERROR_EXIT)
        return 0;
    return ret >= 0 ? ret : -1;
}
