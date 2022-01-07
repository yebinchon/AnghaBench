
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memmove (void*,void const*,size_t) ;

__attribute__((used)) static inline void *__nosan_memmove(void *src, const void *dst, size_t sz) { return memmove(src, dst, sz); }
