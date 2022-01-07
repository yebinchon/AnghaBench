
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static inline size_t __nosan_strlcpy(char *dst, const char *src, size_t sz) { return strlcpy(dst, src, sz); }
