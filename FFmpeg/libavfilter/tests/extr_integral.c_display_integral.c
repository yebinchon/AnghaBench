
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void display_integral(const uint32_t *ii, int w, int h, int lz_32)
{
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++)
            printf(" %7x", ii[y*lz_32 + x]);
        printf("\n");
    }
    printf("---------------\n");
}
