
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strncat (char*,char const*,size_t) ;

__attribute__((used)) static inline char *__nosan_strncat(char *dst, const char *src, size_t sz) { return strncat(dst, src, sz); }
