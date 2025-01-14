
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int pad_len; unsigned char const* pad; int * write_buf; int hd; int encrypt_iv; int aes_encrypt; int write_buf_size; } ;
typedef TYPE_2__ CryptoContext ;


 int AVERROR (int ) ;
 int BLOCKSIZE ;
 int ENOMEM ;
 int av_aes_crypt (int ,int *,unsigned char const*,int,int ,int ) ;
 int av_fast_malloc (int **,int *,int) ;
 int ffurl_write (int ,int *,int) ;
 int memcpy (unsigned char const*,unsigned char const*,int) ;

__attribute__((used)) static int crypto_write(URLContext *h, const unsigned char *buf, int size)
{
    CryptoContext *c = h->priv_data;
    int total_size, blocks, pad_len, out_size;
    int ret = 0;

    total_size = size + c->pad_len;
    pad_len = total_size % BLOCKSIZE;
    out_size = total_size - pad_len;
    blocks = out_size / BLOCKSIZE;

    if (out_size) {
        av_fast_malloc(&c->write_buf, &c->write_buf_size, out_size);

        if (!c->write_buf)
            return AVERROR(ENOMEM);

        if (c->pad_len) {
            memcpy(&c->pad[c->pad_len], buf, BLOCKSIZE - c->pad_len);
            av_aes_crypt(c->aes_encrypt, c->write_buf, c->pad, 1, c->encrypt_iv, 0);
            blocks--;
        }

        av_aes_crypt(c->aes_encrypt,
                     &c->write_buf[c->pad_len ? BLOCKSIZE : 0],
                     &buf[c->pad_len ? BLOCKSIZE - c->pad_len : 0],
                     blocks, c->encrypt_iv, 0);

        ret = ffurl_write(c->hd, c->write_buf, out_size);
        if (ret < 0)
            return ret;

        memcpy(c->pad, &buf[size - pad_len], pad_len);
    } else
        memcpy(&c->pad[c->pad_len], buf, size);

    c->pad_len = pad_len;

    return size;
}
