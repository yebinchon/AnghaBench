
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int aes_decrypt; int file_key; int file_iv; } ;
typedef TYPE_1__ MOVContext ;


 int av_aes_crypt (int ,int *,int *,int,unsigned char*,int) ;
 int av_aes_init (int ,int ,int,int) ;
 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static int aax_filter(uint8_t *input, int size, MOVContext *c)
{
    int blocks = 0;
    unsigned char iv[16];

    memcpy(iv, c->file_iv, 16);
    blocks = size >> 4;
    av_aes_init(c->aes_decrypt, c->file_key, 128, 1);
    av_aes_crypt(c->aes_decrypt, input, input, blocks, iv, 1);

    return 0;
}
