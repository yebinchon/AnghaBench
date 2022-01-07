
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fast_read (void const*,unsigned int) ;

__attribute__((used)) static __inline unsigned int fast_read_safe(void const *src, unsigned int bytes, const unsigned char *invalid)
{




 invalid = invalid;
 return fast_read(src, bytes);
}
