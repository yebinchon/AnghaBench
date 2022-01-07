
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EAGAIN ;
 int EIO ;




 int av_log (int *,int ,char*,int ) ;
 int gnutls_strerror (int) ;

__attribute__((used)) static int print_tls_error(URLContext *h, int ret)
{
    switch (ret) {
    case 131:
        return AVERROR(EAGAIN);
    case 130:

    case 129:

        break;
    case 128:
        av_log(h, AV_LOG_WARNING, "%s\n", gnutls_strerror(ret));
        break;
    default:
        av_log(h, AV_LOG_ERROR, "%s\n", gnutls_strerror(ret));
        break;
    }
    return AVERROR(EIO);
}
