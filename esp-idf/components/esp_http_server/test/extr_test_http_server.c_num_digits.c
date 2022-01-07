
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned num_digits(unsigned x)
{
    unsigned digits = 1;
    while ((x = x/10) != 0) {
        digits++;
    }
    return digits;
}
