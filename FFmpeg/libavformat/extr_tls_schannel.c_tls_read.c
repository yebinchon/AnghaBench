
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_13__ {scalar_t__ BufferType; int cbBuffer; int * pvBuffer; } ;
struct TYPE_11__ {int tcp; } ;
struct TYPE_12__ {int dec_buf_offset; int sspi_close_notify; int connection_closed; int enc_buf_size; int enc_buf_offset; int dec_buf_size; int * dec_buf; int * enc_buf; int ctxt_handle; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int SecBufferDesc ;
typedef TYPE_4__ SecBuffer ;
typedef scalar_t__ SECURITY_STATUS ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 scalar_t__ DecryptMessage (int *,int *,int ,int *) ;
 int EAGAIN ;
 int EIO ;
 int FFMIN (int,int) ;
 int SCHANNEL_FREE_BUFFER_SIZE ;
 scalar_t__ SECBUFFER_DATA ;
 scalar_t__ SECBUFFER_EMPTY ;
 scalar_t__ SECBUFFER_EXTRA ;
 scalar_t__ SEC_E_INCOMPLETE_MESSAGE ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_CONTEXT_EXPIRED ;
 scalar_t__ SEC_I_RENEGOTIATE ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_reallocp (int **,int) ;
 int ffurl_read (int ,int *,int) ;
 int init_sec_buffer (TYPE_4__*,scalar_t__,int *,int) ;
 int init_sec_buffer_desc (int *,TYPE_4__*,int) ;
 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,int) ;
 int tls_client_handshake_loop (TYPE_1__*,int ) ;

__attribute__((used)) static int tls_read(URLContext *h, uint8_t *buf, int len)
{
    TLSContext *c = h->priv_data;
    TLSShared *s = &c->tls_shared;
    SECURITY_STATUS sspi_ret = SEC_E_OK;
    SecBuffer inbuf[4];
    SecBufferDesc inbuf_desc;
    int size, ret;
    int min_enc_buf_size = len + SCHANNEL_FREE_BUFFER_SIZE;

    if (len <= c->dec_buf_offset)
        goto cleanup;

    if (c->sspi_close_notify)
        goto cleanup;

    if (!c->connection_closed) {
        size = c->enc_buf_size - c->enc_buf_offset;
        if (size < SCHANNEL_FREE_BUFFER_SIZE || c->enc_buf_size < min_enc_buf_size) {
            c->enc_buf_size = c->enc_buf_offset + SCHANNEL_FREE_BUFFER_SIZE;
            if (c->enc_buf_size < min_enc_buf_size)
                c->enc_buf_size = min_enc_buf_size;
            ret = av_reallocp(&c->enc_buf, c->enc_buf_size);
            if (ret < 0) {
                c->enc_buf_size = c->enc_buf_offset = 0;
                return ret;
            }
        }

        ret = ffurl_read(s->tcp, c->enc_buf + c->enc_buf_offset,
                         c->enc_buf_size - c->enc_buf_offset);
        if (ret == AVERROR_EOF) {
            c->connection_closed = 1;
            ret = 0;
        } else if (ret < 0) {
            av_log(h, AV_LOG_ERROR, "Unable to read from socket\n");
            return ret;
        }

        c->enc_buf_offset += ret;
    }

    while (c->enc_buf_offset > 0 && sspi_ret == SEC_E_OK && c->dec_buf_offset < len) {

        init_sec_buffer(&inbuf[0], SECBUFFER_DATA, c->enc_buf, c->enc_buf_offset);


        init_sec_buffer(&inbuf[1], SECBUFFER_EMPTY, ((void*)0), 0);
        init_sec_buffer(&inbuf[2], SECBUFFER_EMPTY, ((void*)0), 0);
        init_sec_buffer(&inbuf[3], SECBUFFER_EMPTY, ((void*)0), 0);
        init_sec_buffer_desc(&inbuf_desc, inbuf, 4);

        sspi_ret = DecryptMessage(&c->ctxt_handle, &inbuf_desc, 0, ((void*)0));
        if (sspi_ret == SEC_E_OK || sspi_ret == SEC_I_RENEGOTIATE ||
            sspi_ret == SEC_I_CONTEXT_EXPIRED) {

            if (inbuf[1].BufferType == SECBUFFER_DATA) {

                size = inbuf[1].cbBuffer > SCHANNEL_FREE_BUFFER_SIZE ?
                       inbuf[1].cbBuffer : SCHANNEL_FREE_BUFFER_SIZE;
                if (c->dec_buf_size - c->dec_buf_offset < size || c->dec_buf_size < len) {
                    c->dec_buf_size = c->dec_buf_offset + size;
                    if (c->dec_buf_size < len)
                        c->dec_buf_size = len;
                    ret = av_reallocp(&c->dec_buf, c->dec_buf_size);
                    if (ret < 0) {
                        c->dec_buf_size = c->dec_buf_offset = 0;
                        return ret;
                    }
                }


                size = inbuf[1].cbBuffer;
                if (size) {
                    memcpy(c->dec_buf + c->dec_buf_offset, inbuf[1].pvBuffer, size);
                    c->dec_buf_offset += size;
                }
            }
            if (inbuf[3].BufferType == SECBUFFER_EXTRA && inbuf[3].cbBuffer > 0) {
                if (c->enc_buf_offset > inbuf[3].cbBuffer) {
                    memmove(c->enc_buf, (c->enc_buf + c->enc_buf_offset) - inbuf[3].cbBuffer,
                    inbuf[3].cbBuffer);
                    c->enc_buf_offset = inbuf[3].cbBuffer;
                }
            } else
                c->enc_buf_offset = 0;

            if (sspi_ret == SEC_I_RENEGOTIATE) {
                if (c->enc_buf_offset) {
                    av_log(h, AV_LOG_ERROR, "Cannot renegotiate, encrypted data buffer not empty\n");
                    ret = AVERROR_UNKNOWN;
                    goto cleanup;
                }

                av_log(h, AV_LOG_VERBOSE, "Re-negotiating security context\n");
                ret = tls_client_handshake_loop(h, 0);
                if (ret < 0) {
                    goto cleanup;
                }
                sspi_ret = SEC_E_OK;
                continue;
            } else if (sspi_ret == SEC_I_CONTEXT_EXPIRED) {
                c->sspi_close_notify = 1;
                if (!c->connection_closed) {
                    c->connection_closed = 1;
                    av_log(h, AV_LOG_VERBOSE, "Server closed the connection\n");
                }
                ret = 0;
                goto cleanup;
            }
        } else if (sspi_ret == SEC_E_INCOMPLETE_MESSAGE) {
            ret = AVERROR(EAGAIN);
            goto cleanup;
        } else {
            av_log(h, AV_LOG_ERROR, "Unable to decrypt message (error 0x%x)\n", (unsigned)sspi_ret);
            ret = AVERROR(EIO);
            goto cleanup;
        }
    }

    ret = 0;

cleanup:
    size = FFMIN(len, c->dec_buf_offset);
    if (size) {
        memcpy(buf, c->dec_buf, size);
        memmove(c->dec_buf, c->dec_buf + size, c->dec_buf_offset - size);
        c->dec_buf_offset -= size;

        return size;
    }

    if (ret == 0 && !c->connection_closed)
        ret = AVERROR(EAGAIN);

    return ret < 0 ? ret : AVERROR_EOF;
}
