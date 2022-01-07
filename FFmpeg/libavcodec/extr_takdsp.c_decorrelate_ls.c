
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;



__attribute__((used)) static void decorrelate_ls(int32_t *p1, int32_t *p2, int length)
{
    int i;

    for (i = 0; i < length; i++) {
        int32_t a = p1[i];
        int32_t b = p2[i];
        p2[i] = a + b;
    }
}
