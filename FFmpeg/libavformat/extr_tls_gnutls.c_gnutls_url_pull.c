
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ gnutls_transport_ptr_t ;
typedef int URLContext ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int EAGAIN ;
 int EIO ;
 int errno ;
 int ffurl_read (int *,void*,size_t) ;

__attribute__((used)) static ssize_t gnutls_url_pull(gnutls_transport_ptr_t transport,
                               void *buf, size_t len)
{
    URLContext *h = (URLContext*) transport;
    int ret = ffurl_read(h, buf, len);
    if (ret >= 0)
        return ret;
    if (ret == AVERROR_EXIT)
        return 0;
    if (ret == AVERROR(EAGAIN))
        errno = EAGAIN;
    else
        errno = EIO;
    return -1;
}
