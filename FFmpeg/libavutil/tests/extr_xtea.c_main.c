
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const uint8_t ;
typedef int AVXTEA ;


 int AV_RB32 (char const*) ;
 int AV_WL32 (char const*,int ) ;
 int XTEA_NUM_TESTS ;
 int av_free (int *) ;
 int * av_xtea_alloc () ;
 int av_xtea_crypt (int *,char const*,char const*,int,char const*,int ) ;
 int av_xtea_init (int *,char const*) ;
 int av_xtea_le_crypt (int *,char const*,char const*,int,char const*,int ) ;
 int av_xtea_le_init (int *,char const*) ;
 int memcpy (char const*,char*,int) ;
 int printf (char*) ;
 int test_xtea (int *,char const*,char const*,char const*,int,char const*,int,char*,int (*) (int *,char const*,char const*,int,char const*,int )) ;
 char const** xtea_test_ct ;
 char const** xtea_test_key ;
 char const** xtea_test_pt ;

int main(void)
{
    uint8_t buf[16], iv[8];
    int i, j;
    static const uint8_t src[32] = "HelloWorldHelloWorldHelloWorld";
    uint8_t ct[32];
    uint8_t pl[32];
    AVXTEA *ctx = av_xtea_alloc();
    if (!ctx)
        return 1;

    for (i = 0; i < XTEA_NUM_TESTS; i++) {
        av_xtea_init(ctx, xtea_test_key[i]);

        test_xtea(ctx, buf, xtea_test_pt[i], xtea_test_ct[i], 1, ((void*)0), 0, "encryption", av_xtea_crypt);
        test_xtea(ctx, buf, xtea_test_ct[i], xtea_test_pt[i], 1, ((void*)0), 1, "decryption", av_xtea_crypt);

        for (j = 0; j < 4; j++)
            AV_WL32(&buf[4*j], AV_RB32(&xtea_test_key[i][4*j]));
        av_xtea_le_init(ctx, buf);
        for (j = 0; j < 2; j++) {
            AV_WL32(&ct[4*j], AV_RB32(&xtea_test_ct[i][4*j]));
            AV_WL32(&pl[4*j], AV_RB32(&xtea_test_pt[i][4*j]));
        }
        test_xtea(ctx, buf, pl, ct, 1, ((void*)0), 0, "encryption", av_xtea_le_crypt);
        test_xtea(ctx, buf, ct, pl, 1, ((void*)0), 1, "decryption", av_xtea_le_crypt);


        memcpy(iv, "HALLO123", 8);
        av_xtea_crypt(ctx, ct, src, 4, iv, 0);


        memcpy(iv, "HALLO123", 8);
        test_xtea(ctx, pl, ct, src, 4, iv, 1, "CBC decryption", av_xtea_crypt);

        memcpy(iv, "HALLO123", 8);
        test_xtea(ctx, ct, ct, src, 4, iv, 1, "CBC inplace decryption", av_xtea_crypt);
    }

    printf("Test encryption/decryption success.\n");
    av_free(ctx);

    return 0;
}
