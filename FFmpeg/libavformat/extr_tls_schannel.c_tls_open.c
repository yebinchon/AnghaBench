
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_15__ {int dwFlags; int dwVersion; int member_0; } ;
struct TYPE_13__ {scalar_t__ verify; scalar_t__ listen; } ;
struct TYPE_14__ {int connected; int cred_timestamp; int cred_handle; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int TCHAR ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_4__ SCHANNEL_CRED ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 scalar_t__ AcquireCredentialsHandle (int *,int *,int ,int *,TYPE_4__*,int *,int *,int *,int *) ;
 int EINVAL ;
 int SCHANNEL_CRED_VERSION ;
 int SCH_CRED_AUTO_CRED_VALIDATION ;
 int SCH_CRED_IGNORE_NO_REVOCATION_CHECK ;
 int SCH_CRED_IGNORE_REVOCATION_OFFLINE ;
 int SCH_CRED_MANUAL_CRED_VALIDATION ;
 int SCH_CRED_REVOCATION_CHECK_CHAIN ;
 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ UNISP_NAME ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int ff_tls_open_underlying (TYPE_2__*,TYPE_1__*,char const*,int **) ;
 int tls_client_handshake (TYPE_1__*) ;
 int tls_close (TYPE_1__*) ;

__attribute__((used)) static int tls_open(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *c = h->priv_data;
    TLSShared *s = &c->tls_shared;
    SECURITY_STATUS sspi_ret;
    SCHANNEL_CRED schannel_cred = { 0 };
    int ret;

    if ((ret = ff_tls_open_underlying(s, h, uri, options)) < 0)
        goto fail;

    if (s->listen) {
        av_log(h, AV_LOG_ERROR, "TLS Listen Sockets with SChannel is not implemented.\n");
        ret = AVERROR(EINVAL);
        goto fail;
    }


    schannel_cred.dwVersion = SCHANNEL_CRED_VERSION;

    if (s->verify)
        schannel_cred.dwFlags = SCH_CRED_AUTO_CRED_VALIDATION |
                                SCH_CRED_REVOCATION_CHECK_CHAIN;
    else
        schannel_cred.dwFlags = SCH_CRED_MANUAL_CRED_VALIDATION |
                                SCH_CRED_IGNORE_NO_REVOCATION_CHECK |
                                SCH_CRED_IGNORE_REVOCATION_OFFLINE;


    sspi_ret = AcquireCredentialsHandle(((void*)0), (TCHAR *)UNISP_NAME, SECPKG_CRED_OUTBOUND,
                                        ((void*)0), &schannel_cred, ((void*)0), ((void*)0), &c->cred_handle,
                                        &c->cred_timestamp);
    if (sspi_ret != SEC_E_OK) {
        av_log(h, AV_LOG_ERROR, "Unable to acquire security credentials (0x%lx)\n", sspi_ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = tls_client_handshake(h);
    if (ret < 0)
        goto fail;

    c->connected = 1;

    return 0;

fail:
    tls_close(h);
    return ret;
}
