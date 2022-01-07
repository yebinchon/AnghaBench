
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void bcopy (void const*,void*,size_t) ;

__attribute__((used)) static inline void __nosan_bcopy(const void *src, void *dst, size_t sz) { return bcopy(src, dst, sz); }
