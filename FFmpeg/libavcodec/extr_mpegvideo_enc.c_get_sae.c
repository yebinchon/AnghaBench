
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ FFABS (scalar_t__) ;

__attribute__((used)) static int get_sae(uint8_t *src, int ref, int stride)
{
    int x,y;
    int acc = 0;

    for (y = 0; y < 16; y++) {
        for (x = 0; x < 16; x++) {
            acc += FFABS(src[x + y * stride] - ref);
        }
    }

    return acc;
}
