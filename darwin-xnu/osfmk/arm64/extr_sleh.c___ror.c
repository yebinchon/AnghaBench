
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_BIT ;

__attribute__((used)) static inline unsigned
__ror(unsigned value, unsigned shift)
{
 return (((unsigned)(value) >> (unsigned)(shift)) |
         (unsigned)(value) << ((unsigned)(sizeof(unsigned) * CHAR_BIT) - (unsigned)(shift)));
}
