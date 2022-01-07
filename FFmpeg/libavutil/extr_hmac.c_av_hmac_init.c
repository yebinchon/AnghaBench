
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {unsigned int blocklen; int* key; unsigned int keylen; unsigned int hashlen; int hash; int (* update ) (int ,int*,int) ;int (* init ) (int ) ;int (* final ) (int ,int*) ;} ;
typedef TYPE_1__ AVHMAC ;


 int MAX_BLOCKLEN ;
 int memcpy (int*,int const*,unsigned int) ;
 int stub1 (int ) ;
 int stub2 (int ,int const*,unsigned int) ;
 int stub3 (int ,int*) ;
 int stub4 (int ) ;
 int stub5 (int ,int*,int) ;

void av_hmac_init(AVHMAC *c, const uint8_t *key, unsigned int keylen)
{
    int i;
    uint8_t block[MAX_BLOCKLEN];
    if (keylen > c->blocklen) {
        c->init(c->hash);
        c->update(c->hash, key, keylen);
        c->final(c->hash, c->key);
        c->keylen = c->hashlen;
    } else {
        memcpy(c->key, key, keylen);
        c->keylen = keylen;
    }
    c->init(c->hash);
    for (i = 0; i < c->keylen; i++)
        block[i] = c->key[i] ^ 0x36;
    for (i = c->keylen; i < c->blocklen; i++)
        block[i] = 0x36;
    c->update(c->hash, block, c->blocklen);
}
