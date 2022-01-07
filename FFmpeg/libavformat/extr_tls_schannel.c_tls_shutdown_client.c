
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dwshut ;
struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_12__ {int cbBuffer; int pvBuffer; } ;
struct TYPE_10__ {int tcp; int host; } ;
struct TYPE_11__ {scalar_t__ connected; int ctxt_timestamp; int context_flags; int ctxt_handle; int request_flags; int cred_handle; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int SecBufferDesc ;
typedef TYPE_4__ SecBuffer ;
typedef scalar_t__ SECURITY_STATUS ;
typedef int DWORD ;


 int AV_LOG_ERROR ;
 scalar_t__ ApplyControlToken (int *,int *) ;
 int FreeContextBuffer (int ) ;
 scalar_t__ InitializeSecurityContext (int *,int *,int ,int ,int ,int ,int *,int ,int *,int *,int *,int *) ;
 int SCHANNEL_SHUTDOWN ;
 int SECBUFFER_EMPTY ;
 int SECBUFFER_TOKEN ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_CONTEXT_EXPIRED ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ffurl_write (int ,int ,int) ;
 int init_sec_buffer (TYPE_4__*,int ,int *,int) ;
 int init_sec_buffer_desc (int *,TYPE_4__*,int) ;

__attribute__((used)) static int tls_shutdown_client(URLContext *h)
{
    TLSContext *c = h->priv_data;
    TLSShared *s = &c->tls_shared;
    int ret;

    if (c->connected) {
        SecBufferDesc BuffDesc;
        SecBuffer Buffer;
        SECURITY_STATUS sspi_ret;
        SecBuffer outbuf;
        SecBufferDesc outbuf_desc;

        DWORD dwshut = SCHANNEL_SHUTDOWN;
        init_sec_buffer(&Buffer, SECBUFFER_TOKEN, &dwshut, sizeof(dwshut));
        init_sec_buffer_desc(&BuffDesc, &Buffer, 1);

        sspi_ret = ApplyControlToken(&c->ctxt_handle, &BuffDesc);
        if (sspi_ret != SEC_E_OK)
            av_log(h, AV_LOG_ERROR, "ApplyControlToken failed\n");

        init_sec_buffer(&outbuf, SECBUFFER_EMPTY, ((void*)0), 0);
        init_sec_buffer_desc(&outbuf_desc, &outbuf, 1);

        sspi_ret = InitializeSecurityContext(&c->cred_handle, &c->ctxt_handle, s->host,
                                             c->request_flags, 0, 0, ((void*)0), 0, &c->ctxt_handle,
                                             &outbuf_desc, &c->context_flags, &c->ctxt_timestamp);
        if (sspi_ret == SEC_E_OK || sspi_ret == SEC_I_CONTEXT_EXPIRED) {
            ret = ffurl_write(s->tcp, outbuf.pvBuffer, outbuf.cbBuffer);
            FreeContextBuffer(outbuf.pvBuffer);
            if (ret < 0 || ret != outbuf.cbBuffer)
                av_log(h, AV_LOG_ERROR, "Failed to send close message\n");
        }

        c->connected = 0;
    }
    return 0;
}
