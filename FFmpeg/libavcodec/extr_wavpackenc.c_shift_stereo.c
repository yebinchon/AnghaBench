
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static void shift_stereo(int32_t *left, int32_t *right,
                         int nb_samples, int shift)
{
    int i;
    for (i = 0; i < nb_samples; i++) {
        left [i] >>= shift;
        right[i] >>= shift;
    }
}
