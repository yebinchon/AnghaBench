
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
uintptr_t
hash_mix(uintptr_t x)
{
 x += ~(x << 32);
 x ^= (x >> 22);
 x += ~(x << 13);
 x ^= (x >> 8 );
 x += (x << 3 );
 x ^= (x >> 15);
 x += ~(x << 27);
 x ^= (x >> 31);

 return x;
}
