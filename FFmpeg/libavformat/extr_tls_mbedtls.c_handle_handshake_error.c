
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;


 int AV_LOG_ERROR ;




 int av_log (int *,int ,char*,...) ;

__attribute__((used)) static void handle_handshake_error(URLContext *h, int ret)
{
    switch (ret) {
    case 128:
        av_log(h, AV_LOG_ERROR, "None of the common ciphersuites is usable. Was the local certificate correctly set?\n");
        break;
    case 129:
        av_log(h, AV_LOG_ERROR, "A fatal alert message was received from the peer, has the peer a correct certificate?\n");
        break;
    case 130:
        av_log(h, AV_LOG_ERROR, "No CA chain is set, but required to operate. Was the CA correctly set?\n");
        break;
    case 131:
        av_log(h, AV_LOG_ERROR, "TLS handshake was aborted by peer.\n");
        break;
    default:
        av_log(h, AV_LOG_ERROR, "mbedtls_ssl_handshake returned -0x%x\n", -ret);
        break;
    }
}
