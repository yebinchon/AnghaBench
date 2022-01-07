
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVTEA {int dummy; } ;


 int av_tea_crypt (struct AVTEA*,int*,int const*,int,int*,int) ;
 int exit (int) ;
 scalar_t__ memcmp (int*,int const*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void test_tea(struct AVTEA *ctx, uint8_t *dst, const uint8_t *src,
                     const uint8_t *ref, int len, uint8_t *iv, int dir,
                     const char *test)
{
    av_tea_crypt(ctx, dst, src, len, iv, dir);
    if (memcmp(dst, ref, 8*len)) {
        int i;
        printf("%s failed\ngot      ", test);
        for (i = 0; i < 8*len; i++)
            printf("%02x ", dst[i]);
        printf("\nexpected ");
        for (i = 0; i < 8*len; i++)
            printf("%02x ", ref[i]);
        printf("\n");
        exit(1);
    }
}
