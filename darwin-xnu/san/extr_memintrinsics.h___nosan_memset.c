
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memset (void*,int,size_t) ;

__attribute__((used)) static inline void *__nosan_memset(void *src, int c, size_t sz) { return memset(src, c, sz); }
