
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {size_t pad_len; scalar_t__ write_buf; scalar_t__ aes_encrypt; scalar_t__ aes_decrypt; scalar_t__ hd; int encrypt_iv; int * pad; } ;
typedef TYPE_2__ CryptoContext ;


 int BLOCKSIZE ;
 int av_aes_crypt (scalar_t__,int *,int *,int,int ,int ) ;
 int av_freep (scalar_t__*) ;
 int ffurl_close (scalar_t__) ;
 int ffurl_write (scalar_t__,int *,int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int crypto_close(URLContext *h)
{
    CryptoContext *c = h->priv_data;
    int ret = 0;

    if (c->aes_encrypt) {
        uint8_t out_buf[BLOCKSIZE];
        int pad = BLOCKSIZE - c->pad_len;

        memset(&c->pad[c->pad_len], pad, pad);
        av_aes_crypt(c->aes_encrypt, out_buf, c->pad, 1, c->encrypt_iv, 0);
        ret = ffurl_write(c->hd, out_buf, BLOCKSIZE);
    }

    if (c->hd)
        ffurl_close(c->hd);
    av_freep(&c->aes_decrypt);
    av_freep(&c->aes_encrypt);
    av_freep(&c->write_buf);
    return ret;
}
