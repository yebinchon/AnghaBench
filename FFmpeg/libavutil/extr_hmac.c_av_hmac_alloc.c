
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* hmac_update ;
typedef int hmac_init ;
typedef void* hmac_final ;
typedef enum AVHMACType { ____Placeholder_AVHMACType } AVHMACType ;
struct TYPE_5__ {int blocklen; int hashlen; void* hash; void* final; void* update; int init; } ;
typedef TYPE_1__ AVHMAC ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_mallocz (int) ;
 void* av_md5_alloc () ;
 int av_md5_final ;
 int av_md5_init ;
 int av_md5_update ;
 void* av_sha512_alloc () ;
 int av_sha512_final ;
 int av_sha512_update ;
 void* av_sha_alloc () ;
 int av_sha_final ;
 int av_sha_update ;
 int sha160_init ;
 int sha224_init ;
 int sha256_init ;
 int sha384_init ;
 int sha512_init ;

AVHMAC *av_hmac_alloc(enum AVHMACType type)
{
    AVHMAC *c = av_mallocz(sizeof(*c));
    if (!c)
        return ((void*)0);
    switch (type) {
    case 133:
        c->blocklen = 64;
        c->hashlen = 16;
        c->init = (hmac_init) av_md5_init;
        c->update = (hmac_update) av_md5_update;
        c->final = (hmac_final) av_md5_final;
        c->hash = av_md5_alloc();
        break;
    case 132:
        c->blocklen = 64;
        c->hashlen = 20;
        c->init = sha160_init;
        c->update = (hmac_update) av_sha_update;
        c->final = (hmac_final) av_sha_final;
        c->hash = av_sha_alloc();
        break;
    case 131:
        c->blocklen = 64;
        c->hashlen = 28;
        c->init = sha224_init;
        c->update = (hmac_update) av_sha_update;
        c->final = (hmac_final) av_sha_final;
        c->hash = av_sha_alloc();
        break;
    case 130:
        c->blocklen = 64;
        c->hashlen = 32;
        c->init = sha256_init;
        c->update = (hmac_update) av_sha_update;
        c->final = (hmac_final) av_sha_final;
        c->hash = av_sha_alloc();
        break;
    case 129:
        c->blocklen = 128;
        c->hashlen = 48;
        c->init = sha384_init;
        c->update = (hmac_update) av_sha512_update;
        c->final = (hmac_final) av_sha512_final;
        c->hash = av_sha512_alloc();
        break;
    case 128:
        c->blocklen = 128;
        c->hashlen = 64;
        c->init = sha512_init;
        c->update = (hmac_update) av_sha512_update;
        c->final = (hmac_final) av_sha512_final;
        c->hash = av_sha512_alloc();
        break;
    default:
        av_free(c);
        return ((void*)0);
    }
    if (!c->hash) {
        av_free(c);
        return ((void*)0);
    }
    return c;
}
