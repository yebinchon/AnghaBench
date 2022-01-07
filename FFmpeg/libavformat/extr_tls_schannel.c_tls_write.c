
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_14__ {scalar_t__ cbMaximumMessage; int cbHeader; int cbTrailer; } ;
struct TYPE_13__ {int cbBuffer; int pvBuffer; } ;
struct TYPE_11__ {int tcp; } ;
struct TYPE_12__ {int ctxt_handle; TYPE_9__ sizes; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int SecBufferDesc ;
typedef TYPE_4__ SecBuffer ;
typedef scalar_t__ SECURITY_STATUS ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ EncryptMessage (int *,int ,int *,int ) ;
 int FFMIN (int,scalar_t__) ;
 scalar_t__ QueryContextAttributes (int *,int ,TYPE_9__*) ;
 int SECBUFFER_DATA ;
 int SECBUFFER_EMPTY ;
 int SECBUFFER_STREAM_HEADER ;
 int SECBUFFER_STREAM_TRAILER ;
 int SECPKG_ATTR_STREAM_SIZES ;
 scalar_t__ SEC_E_INSUFFICIENT_MEMORY ;
 scalar_t__ SEC_E_OK ;
 int av_freep (int **) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int * av_malloc (int) ;
 int ffurl_write (int ,int *,int) ;
 int init_sec_buffer (TYPE_4__*,int ,int *,int) ;
 int init_sec_buffer_desc (int *,TYPE_4__*,int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int tls_write(URLContext *h, const uint8_t *buf, int len)
{
    TLSContext *c = h->priv_data;
    TLSShared *s = &c->tls_shared;
    SECURITY_STATUS sspi_ret;
    int ret = 0, data_size;
    uint8_t *data = ((void*)0);
    SecBuffer outbuf[4];
    SecBufferDesc outbuf_desc;

    if (c->sizes.cbMaximumMessage == 0) {
        sspi_ret = QueryContextAttributes(&c->ctxt_handle, SECPKG_ATTR_STREAM_SIZES, &c->sizes);
        if (sspi_ret != SEC_E_OK)
            return AVERROR_UNKNOWN;
    }


    len = FFMIN(len, c->sizes.cbMaximumMessage);

    data_size = c->sizes.cbHeader + len + c->sizes.cbTrailer;
    data = av_malloc(data_size);
    if (data == ((void*)0))
        return AVERROR(ENOMEM);

    init_sec_buffer(&outbuf[0], SECBUFFER_STREAM_HEADER,
                  data, c->sizes.cbHeader);
    init_sec_buffer(&outbuf[1], SECBUFFER_DATA,
                  data + c->sizes.cbHeader, len);
    init_sec_buffer(&outbuf[2], SECBUFFER_STREAM_TRAILER,
                  data + c->sizes.cbHeader + len,
                  c->sizes.cbTrailer);
    init_sec_buffer(&outbuf[3], SECBUFFER_EMPTY, ((void*)0), 0);
    init_sec_buffer_desc(&outbuf_desc, outbuf, 4);

    memcpy(outbuf[1].pvBuffer, buf, len);

    sspi_ret = EncryptMessage(&c->ctxt_handle, 0, &outbuf_desc, 0);
    if (sspi_ret == SEC_E_OK) {
        len = outbuf[0].cbBuffer + outbuf[1].cbBuffer + outbuf[2].cbBuffer;
        ret = ffurl_write(s->tcp, data, len);
        if (ret < 0 || ret != len) {
            ret = AVERROR(EIO);
            av_log(h, AV_LOG_ERROR, "Writing encrypted data to socket failed\n");
            goto done;
        }
    } else {
        av_log(h, AV_LOG_ERROR, "Encrypting data failed\n");
        if (sspi_ret == SEC_E_INSUFFICIENT_MEMORY)
            ret = AVERROR(ENOMEM);
        else
            ret = AVERROR(EIO);
        goto done;
    }

done:
    av_freep(&data);
    return ret < 0 ? ret : outbuf[1].cbBuffer;
}
