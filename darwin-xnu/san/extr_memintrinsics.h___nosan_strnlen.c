
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strnlen (char const*,size_t) ;

__attribute__((used)) static inline size_t __nosan_strnlen(const char *src, size_t sz) { return strnlen(src, sz); }
