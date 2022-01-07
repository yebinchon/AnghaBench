
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HAVE_BIGENDIAN ;
 unsigned int av_bswap32 (unsigned int) ;

__attribute__((used)) static void xor_block(void *p1, void *p2, unsigned size, int key, unsigned *key_ptr)
{
    unsigned *d1 = p1;
    unsigned *d2 = p2;
    unsigned k = *key_ptr;

    size >>= 2;

    while (size > 0) {
        *d2 = *d1 ^ (HAVE_BIGENDIAN ? av_bswap32(k) : k);
        k += key;
        d1++;
        d2++;
        size--;
    }

    *key_ptr = k;
}
