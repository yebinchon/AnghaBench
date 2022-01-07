
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void index_conv(int16_t *index)
{
    int k;

    for (k = 4; k < 6; k++) {
        if (index[k] >= 44 && index[k] < 108) {
            index[k] += 64;
        } else if (index[k] >= 108 && index[k] < 128) {
            index[k] += 128;
        }
    }
}
