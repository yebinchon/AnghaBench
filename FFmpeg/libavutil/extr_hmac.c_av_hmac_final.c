
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {unsigned int hashlen; int keylen; int* key; int blocklen; int hash; int (* final ) (int ,int*) ;int (* update ) (int ,int*,unsigned int) ;int (* init ) (int ) ;} ;
typedef TYPE_1__ AVHMAC ;


 int AVERROR (int ) ;
 int EINVAL ;
 int MAX_BLOCKLEN ;
 int stub1 (int ,int*) ;
 int stub2 (int ) ;
 int stub3 (int ,int*,int) ;
 int stub4 (int ,int*,unsigned int) ;
 int stub5 (int ,int*) ;

int av_hmac_final(AVHMAC *c, uint8_t *out, unsigned int outlen)
{
    uint8_t block[MAX_BLOCKLEN];
    int i;
    if (outlen < c->hashlen)
        return AVERROR(EINVAL);
    c->final(c->hash, out);
    c->init(c->hash);
    for (i = 0; i < c->keylen; i++)
        block[i] = c->key[i] ^ 0x5C;
    for (i = c->keylen; i < c->blocklen; i++)
        block[i] = 0x5C;
    c->update(c->hash, block, c->blocklen);
    c->update(c->hash, out, c->hashlen);
    c->final(c->hash, out);
    return c->hashlen;
}
