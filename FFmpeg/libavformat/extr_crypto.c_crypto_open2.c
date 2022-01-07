
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int is_streamed; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {int is_streamed; } ;
struct TYPE_9__ {int flags; int encrypt_key; void* aes_encrypt; TYPE_4__* hd; int decrypt_key; void* aes_decrypt; int ivlen; int iv; int encrypt_ivlen; int encrypt_iv; int keylen; int key; int encrypt_keylen; int decrypt_ivlen; int decrypt_iv; int decrypt_keylen; } ;
typedef TYPE_2__ CryptoContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int BLOCKSIZE ;
 int EINVAL ;
 int ENOMEM ;
 void* av_aes_alloc () ;
 int av_aes_init (void*,int ,int,int) ;
 int av_log (TYPE_1__*,int ,char*,char const*) ;
 int av_strstart (char const*,char*,char const**) ;
 int ffurl_open_whitelist (TYPE_4__**,char const*,int,int *,int **,int ,int ,TYPE_1__*) ;
 int set_aes_arg (TYPE_1__*,int *,int *,int ,int ,char*) ;

__attribute__((used)) static int crypto_open2(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    const char *nested_url;
    int ret = 0;
    CryptoContext *c = h->priv_data;
    c->flags = flags;

    if (!av_strstart(uri, "crypto+", &nested_url) &&
        !av_strstart(uri, "crypto:", &nested_url)) {
        av_log(h, AV_LOG_ERROR, "Unsupported url %s\n", uri);
        ret = AVERROR(EINVAL);
        goto err;
    }

    if (flags & AVIO_FLAG_READ) {
        if ((ret = set_aes_arg(h, &c->decrypt_key, &c->decrypt_keylen,
                               c->key, c->keylen, "decryption key")) < 0)
            goto err;
        if ((ret = set_aes_arg(h, &c->decrypt_iv, &c->decrypt_ivlen,
                               c->iv, c->ivlen, "decryption IV")) < 0)
            goto err;
    }

    if (flags & AVIO_FLAG_WRITE) {
        if ((ret = set_aes_arg(h, &c->encrypt_key, &c->encrypt_keylen,
                               c->key, c->keylen, "encryption key")) < 0)
        if (ret < 0)
            goto err;
        if ((ret = set_aes_arg(h, &c->encrypt_iv, &c->encrypt_ivlen,
                               c->iv, c->ivlen, "encryption IV")) < 0)
            goto err;
    }

    if ((ret = ffurl_open_whitelist(&c->hd, nested_url, flags,
                                    &h->interrupt_callback, options,
                                    h->protocol_whitelist, h->protocol_blacklist, h)) < 0) {
        av_log(h, AV_LOG_ERROR, "Unable to open resource: %s\n", nested_url);
        goto err;
    }

    if (flags & AVIO_FLAG_READ) {
        c->aes_decrypt = av_aes_alloc();
        if (!c->aes_decrypt) {
            ret = AVERROR(ENOMEM);
            goto err;
        }
        ret = av_aes_init(c->aes_decrypt, c->decrypt_key, BLOCKSIZE * 8, 1);
        if (ret < 0)
            goto err;


        if (c->hd->is_streamed)
            h->is_streamed = c->hd->is_streamed;
    }

    if (flags & AVIO_FLAG_WRITE) {
        c->aes_encrypt = av_aes_alloc();
        if (!c->aes_encrypt) {
            ret = AVERROR(ENOMEM);
            goto err;
        }
        ret = av_aes_init(c->aes_encrypt, c->encrypt_key, BLOCKSIZE * 8, 0);
        if (ret < 0)
            goto err;


        h->is_streamed = 1;
    }

err:
    return ret;
}
