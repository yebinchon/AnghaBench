
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EAGAIN ;
 int EIO ;






 int av_log (int *,int ,char*,char const*,...) ;

__attribute__((used)) static int handle_tls_error(URLContext *h, const char* func_name, int ret)
{
    switch (ret) {
    case 129:
    case 128:
        return AVERROR(EAGAIN);
    case 131:
    case 132:
        return AVERROR(EIO);
    case 133:
    case 130:
        av_log(h, AV_LOG_WARNING, "%s reported connection reset by peer\n", func_name);
        return AVERROR_EOF;
    default:
        av_log(h, AV_LOG_ERROR, "%s returned -0x%x\n", func_name, -ret);
        return AVERROR(EIO);
    }
}
