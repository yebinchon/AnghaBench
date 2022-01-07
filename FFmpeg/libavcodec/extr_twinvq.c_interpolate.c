
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void interpolate(float *out, float v1, float v2, int size)
{
    int i;
    float step = (v1 - v2) / (size + 1);

    for (i = 0; i < size; i++) {
        v2 += step;
        out[i] = v2;
    }
}
