
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_13__ {int cbBuffer; int pvBuffer; } ;
struct TYPE_11__ {int tcp; int host; } ;
struct TYPE_12__ {int request_flags; int ctxt_handle; int ctxt_timestamp; int context_flags; int cred_handle; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int SecBufferDesc ;
typedef TYPE_4__ SecBuffer ;
typedef scalar_t__ SECURITY_STATUS ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int DeleteSecurityContext (int *) ;
 int EIO ;
 int FreeContextBuffer (int ) ;
 int ISC_REQ_ALLOCATE_MEMORY ;
 int ISC_REQ_CONFIDENTIALITY ;
 int ISC_REQ_REPLAY_DETECT ;
 int ISC_REQ_SEQUENCE_DETECT ;
 int ISC_REQ_STREAM ;
 scalar_t__ InitializeSecurityContext (int *,int *,int ,int,int ,int ,int *,int ,int *,int *,int *,int *) ;
 int SECBUFFER_EMPTY ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int ffurl_write (int ,int ,int) ;
 int init_sec_buffer (TYPE_4__*,int ,int *,int ) ;
 int init_sec_buffer_desc (int *,TYPE_4__*,int) ;
 int tls_client_handshake_loop (TYPE_1__*,int) ;

__attribute__((used)) static int tls_client_handshake(URLContext *h)
{
    TLSContext *c = h->priv_data;
    TLSShared *s = &c->tls_shared;
    SecBuffer outbuf;
    SecBufferDesc outbuf_desc;
    SECURITY_STATUS sspi_ret;
    int ret;

    init_sec_buffer(&outbuf, SECBUFFER_EMPTY, ((void*)0), 0);
    init_sec_buffer_desc(&outbuf_desc, &outbuf, 1);

    c->request_flags = ISC_REQ_SEQUENCE_DETECT | ISC_REQ_REPLAY_DETECT |
                       ISC_REQ_CONFIDENTIALITY | ISC_REQ_ALLOCATE_MEMORY |
                       ISC_REQ_STREAM;

    sspi_ret = InitializeSecurityContext(&c->cred_handle, ((void*)0), s->host, c->request_flags, 0, 0,
                                         ((void*)0), 0, &c->ctxt_handle, &outbuf_desc, &c->context_flags,
                                         &c->ctxt_timestamp);
    if (sspi_ret != SEC_I_CONTINUE_NEEDED) {
        av_log(h, AV_LOG_ERROR, "Unable to create initial security context (0x%lx)\n", sspi_ret);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = ffurl_write(s->tcp, outbuf.pvBuffer, outbuf.cbBuffer);
    FreeContextBuffer(outbuf.pvBuffer);
    if (ret < 0 || ret != outbuf.cbBuffer) {
        av_log(h, AV_LOG_ERROR, "Failed to send initial handshake data\n");
        ret = AVERROR(EIO);
        goto fail;
    }

    return tls_client_handshake_loop(h, 1);

fail:
    DeleteSecurityContext(&c->ctxt_handle);
    return ret;
}
