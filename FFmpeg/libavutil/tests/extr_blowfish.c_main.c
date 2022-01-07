
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int AVBlowfish ;


 scalar_t__* IV ;
 int NUM_VARIABLE_KEY_TESTS ;
 int * av_blowfish_alloc () ;
 int av_blowfish_crypt_ecb (int *,scalar_t__*,scalar_t__*,int) ;
 int av_blowfish_init (int *,char*,int) ;
 int av_free (int *) ;
 scalar_t__* ciphertext ;
 scalar_t__* ciphertext2 ;
 scalar_t__* ciphertext_l ;
 scalar_t__* ciphertext_r ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__* plaintext ;
 scalar_t__* plaintext2 ;
 scalar_t__* plaintext_l ;
 scalar_t__* plaintext_r ;
 int printf (char*) ;
 int test_blowfish (int *,scalar_t__*,scalar_t__*,scalar_t__*,int,scalar_t__*,int,char*) ;
 char** variable_key ;

int main(void)
{
    uint32_t tmptext_l[NUM_VARIABLE_KEY_TESTS];
    uint32_t tmptext_r[NUM_VARIABLE_KEY_TESTS];
    uint8_t tmp[16], iv[8];
    int i;
    AVBlowfish *ctx = av_blowfish_alloc();
    if (!ctx)
        return 1;

    av_blowfish_init(ctx, "abcdefghijklmnopqrstuvwxyz", 26);

    test_blowfish(ctx, tmp, plaintext, ciphertext, 1, ((void*)0), 0, "encryption");
    test_blowfish(ctx, tmp, ciphertext, plaintext, 1, ((void*)0), 1, "decryption");
    test_blowfish(ctx, tmp, tmp, ciphertext, 1, ((void*)0), 0, "Inplace encryption");
    test_blowfish(ctx, tmp, tmp, plaintext, 1, ((void*)0), 1, "Inplace decryption");
    memcpy(iv, IV, 8);
    test_blowfish(ctx, tmp, plaintext2, ciphertext2, 2, iv, 0, "CBC encryption");
    memcpy(iv, IV, 8);
    test_blowfish(ctx, tmp, ciphertext2, plaintext2, 2, iv, 1, "CBC decryption");
    memcpy(iv, IV, 8);
    test_blowfish(ctx, tmp, tmp, ciphertext2, 2, iv, 0, "Inplace CBC encryption");
    memcpy(iv, IV, 8);
    test_blowfish(ctx, tmp, tmp, plaintext2, 2, iv, 1, "Inplace CBC decryption");

    memcpy(tmptext_l, plaintext_l, sizeof(*plaintext_l) * NUM_VARIABLE_KEY_TESTS);
    memcpy(tmptext_r, plaintext_r, sizeof(*plaintext_r) * NUM_VARIABLE_KEY_TESTS);

    for (i = 0; i < NUM_VARIABLE_KEY_TESTS; i++) {
        av_blowfish_init(ctx, variable_key[i], 8);

        av_blowfish_crypt_ecb(ctx, &tmptext_l[i], &tmptext_r[i], 0);
        if (tmptext_l[i] != ciphertext_l[i] || tmptext_r[i] != ciphertext_r[i]) {
            printf("Test encryption failed.\n");
            return 2;
        }

        av_blowfish_crypt_ecb(ctx, &tmptext_l[i], &tmptext_r[i], 1);
        if (tmptext_l[i] != plaintext_l[i] || tmptext_r[i] != plaintext_r[i]) {
            printf("Test decryption failed.\n");
            return 3;
        }
    }
    printf("Test encryption/decryption success.\n");
    av_free(ctx);

    return 0;
}
