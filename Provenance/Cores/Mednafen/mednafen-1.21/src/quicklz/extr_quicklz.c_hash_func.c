
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline unsigned int hash_func(unsigned int i)
{
 return ((i >> 12) ^ i) & 0x0fff;
}
