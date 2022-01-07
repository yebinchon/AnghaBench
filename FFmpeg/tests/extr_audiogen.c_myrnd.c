
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int myrnd(unsigned int *seed_ptr, int n)
{
    unsigned int seed, val;

    seed = *seed_ptr;
    seed = (seed * 314159) + 1;
    if (n == 256) {
        val = seed >> 24;
    } else {
        val = seed % n;
    }
    *seed_ptr = seed;
    return val;
}
