
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int equals(const unsigned char a[16], const unsigned char b[16], size_t len)
{
    unsigned char d = 0;
    size_t i;

    for (i = 0; i < len; i++) {
        d |= a[i] ^ b[i];
    }
    return 1 & ((d - 1) >> 8);
}
