
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memcpy (void*,void const*,size_t) ;

__attribute__((used)) static inline void *__nosan_memcpy(void *dst, const void *src, size_t sz) { return memcpy(dst, src, sz); }
