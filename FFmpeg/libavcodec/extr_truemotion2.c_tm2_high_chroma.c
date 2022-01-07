
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void tm2_high_chroma(int *data, int stride, int *last, unsigned *CD, int *deltas)
{
    int i, j;
    for (j = 0; j < 2; j++) {
        for (i = 0; i < 2; i++) {
            CD[j] += deltas[i + j * 2];
            last[i] += CD[j];
            data[i] = last[i];
        }
        data += stride;
    }
}
