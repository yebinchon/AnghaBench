#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_13__ {scalar_t__ BufferType; int cbBuffer; int /*<<< orphan*/ * pvBuffer; } ;
struct TYPE_11__ {int /*<<< orphan*/  tcp; } ;
struct TYPE_12__ {int dec_buf_offset; int sspi_close_notify; int connection_closed; int enc_buf_size; int enc_buf_offset; int dec_buf_size; int /*<<< orphan*/ * dec_buf; int /*<<< orphan*/ * enc_buf; int /*<<< orphan*/  ctxt_handle; TYPE_2__ tls_shared; } ;
typedef  TYPE_2__ TLSShared ;
typedef  TYPE_3__ TLSContext ;
typedef  int /*<<< orphan*/  SecBufferDesc ;
typedef  TYPE_4__ SecBuffer ;
typedef  scalar_t__ SECURITY_STATUS ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC2 (int,int) ; 
 int SCHANNEL_FREE_BUFFER_SIZE ; 
 scalar_t__ SECBUFFER_DATA ; 
 scalar_t__ SECBUFFER_EMPTY ; 
 scalar_t__ SECBUFFER_EXTRA ; 
 scalar_t__ SEC_E_INCOMPLETE_MESSAGE ; 
 scalar_t__ SEC_E_OK ; 
 scalar_t__ SEC_I_CONTEXT_EXPIRED ; 
 scalar_t__ SEC_I_RENEGOTIATE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ **,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(URLContext *h, uint8_t *buf, int len)
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
            ret = FUNC4(&c->enc_buf, c->enc_buf_size);
            if (ret < 0) {
                c->enc_buf_size = c->enc_buf_offset = 0;
                return ret;
            }
        }

        ret = FUNC5(s->tcp, c->enc_buf + c->enc_buf_offset,
                         c->enc_buf_size - c->enc_buf_offset);
        if (ret == AVERROR_EOF) {
            c->connection_closed = 1;
            ret = 0;
        } else if (ret < 0) {
            FUNC3(h, AV_LOG_ERROR, "Unable to read from socket\n");
            return ret;
        }

        c->enc_buf_offset += ret;
    }

    while (c->enc_buf_offset > 0 && sspi_ret == SEC_E_OK && c->dec_buf_offset < len) {
        /*  input buffer */
        FUNC6(&inbuf[0], SECBUFFER_DATA, c->enc_buf, c->enc_buf_offset);

        /* additional buffers for possible output */
        FUNC6(&inbuf[1], SECBUFFER_EMPTY, NULL, 0);
        FUNC6(&inbuf[2], SECBUFFER_EMPTY, NULL, 0);
        FUNC6(&inbuf[3], SECBUFFER_EMPTY, NULL, 0);
        FUNC7(&inbuf_desc, inbuf, 4);

        sspi_ret = FUNC1(&c->ctxt_handle, &inbuf_desc, 0, NULL);
        if (sspi_ret == SEC_E_OK || sspi_ret == SEC_I_RENEGOTIATE ||
            sspi_ret == SEC_I_CONTEXT_EXPIRED) {
            /* handle decrypted data */
            if (inbuf[1].BufferType == SECBUFFER_DATA) {
                /* grow buffer if needed */
                size = inbuf[1].cbBuffer > SCHANNEL_FREE_BUFFER_SIZE ?
                       inbuf[1].cbBuffer : SCHANNEL_FREE_BUFFER_SIZE;
                if (c->dec_buf_size - c->dec_buf_offset < size || c->dec_buf_size < len)  {
                    c->dec_buf_size = c->dec_buf_offset + size;
                    if (c->dec_buf_size < len)
                        c->dec_buf_size = len;
                    ret = FUNC4(&c->dec_buf, c->dec_buf_size);
                    if (ret < 0) {
                        c->dec_buf_size = c->dec_buf_offset = 0;
                        return ret;
                    }
                }

                /* copy decrypted data to buffer */
                size = inbuf[1].cbBuffer;
                if (size) {
                    FUNC8(c->dec_buf + c->dec_buf_offset, inbuf[1].pvBuffer, size);
                    c->dec_buf_offset += size;
                }
            }
            if (inbuf[3].BufferType == SECBUFFER_EXTRA && inbuf[3].cbBuffer > 0) {
                if (c->enc_buf_offset > inbuf[3].cbBuffer) {
                    FUNC9(c->enc_buf, (c->enc_buf + c->enc_buf_offset) - inbuf[3].cbBuffer,
                    inbuf[3].cbBuffer);
                    c->enc_buf_offset = inbuf[3].cbBuffer;
                }
            } else
                c->enc_buf_offset = 0;

            if (sspi_ret == SEC_I_RENEGOTIATE) {
                if (c->enc_buf_offset) {
                    FUNC3(h, AV_LOG_ERROR, "Cannot renegotiate, encrypted data buffer not empty\n");
                    ret = AVERROR_UNKNOWN;
                    goto cleanup;
                }

                FUNC3(h, AV_LOG_VERBOSE, "Re-negotiating security context\n");
                ret = FUNC10(h, 0);
                if (ret < 0) {
                    goto cleanup;
                }
                sspi_ret = SEC_E_OK;
                continue;
            } else if (sspi_ret == SEC_I_CONTEXT_EXPIRED) {
                c->sspi_close_notify = 1;
                if (!c->connection_closed) {
                    c->connection_closed = 1;
                    FUNC3(h, AV_LOG_VERBOSE, "Server closed the connection\n");
                }
                ret = 0;
                goto cleanup;
            }
        } else if (sspi_ret == SEC_E_INCOMPLETE_MESSAGE) {
            ret = FUNC0(EAGAIN);
            goto cleanup;
        } else {
            FUNC3(h, AV_LOG_ERROR, "Unable to decrypt message (error 0x%x)\n", (unsigned)sspi_ret);
            ret = FUNC0(EIO);
            goto cleanup;
        }
    }

    ret = 0;

cleanup:
    size = FUNC2(len, c->dec_buf_offset);
    if (size) {
        FUNC8(buf, c->dec_buf, size);
        FUNC9(c->dec_buf, c->dec_buf + size, c->dec_buf_offset - size);
        c->dec_buf_offset -= size;

        return size;
    }

    if (ret == 0 && !c->connection_closed)
        ret = FUNC0(EAGAIN);

    return ret < 0 ? ret : AVERROR_EOF;
}