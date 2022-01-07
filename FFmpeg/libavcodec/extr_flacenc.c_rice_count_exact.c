
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int32_t ;



__attribute__((used)) static uint64_t rice_count_exact(const int32_t *res, int n, int k)
{
    int i;
    uint64_t count = 0;

    for (i = 0; i < n; i++) {
        int32_t v = -2 * res[i] - 1;
        v ^= v >> 31;
        count += (v >> k) + 1 + k;
    }
    return count;
}
