
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int AV_LOG_ERROR ;



 int av_log (int *,int ,char*,...) ;

__attribute__((used)) static void handle_pk_parse_error(URLContext *h, int ret)
{
    switch (ret) {
    case 130:
        av_log(h, AV_LOG_ERROR, "Read of key file failed. Is it actually there, are the access permissions correct?\n");
        break;
    case 128:
        av_log(h, AV_LOG_ERROR, "A password for the private key is missing.\n");
        break;
    case 129:
        av_log(h, AV_LOG_ERROR, "The given password for the private key is wrong.\n");
        break;
    default:
        av_log(h, AV_LOG_ERROR, "mbedtls_pk_parse_key returned -0x%x\n", -ret);
        break;
    }
}
