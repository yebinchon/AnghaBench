
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitbuf_t ;


 int bits_get (int *,int) ;

__attribute__((used)) static inline int bits_skip(bitbuf_t *bb, int bits)
{
    if (bits <= 0)
        return 0;
    while (bits > 32)
    {
        bits_get(bb, 32);
        bits -= 32;
    }
    bits_get(bb, bits);
    return 0;
}
