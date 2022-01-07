
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;
typedef int BIO ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int BIO_clear_retry_flags (int *) ;
 int BIO_set_retry_read (int *) ;
 int EAGAIN ;
 int * GET_BIO_DATA (int *) ;
 int ffurl_read (int *,char*,int) ;

__attribute__((used)) static int url_bio_bread(BIO *b, char *buf, int len)
{
    URLContext *h = GET_BIO_DATA(b);
    int ret = ffurl_read(h, buf, len);
    if (ret >= 0)
        return ret;
    BIO_clear_retry_flags(b);
    if (ret == AVERROR(EAGAIN))
        BIO_set_retry_read(b);
    if (ret == AVERROR_EXIT)
        return 0;
    return -1;
}
