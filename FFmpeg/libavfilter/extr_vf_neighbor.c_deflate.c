
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;


 void* FFMAX (int ,int) ;
 int FFMIN (int,void* const) ;

__attribute__((used)) static void deflate(uint8_t *dst, const uint8_t *p1, int width,
                    int threshold, const uint8_t *coordinates[], int coord,
                    int maxc)
{
    int x, i;

    for (x = 0; x < width; x++) {
        int sum = 0;
        int limit = FFMAX(p1[x] - threshold, 0);

        for (i = 0; i < 8; sum += *(coordinates[i++] + x));

        dst[x] = FFMAX(FFMIN(sum / 8, p1[x]), limit);
    }
}
