
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strncpy (char*,char const*,size_t) ;

__attribute__((used)) static inline char *__nosan_strncpy(char *dst, const char *src, size_t sz) { return strncpy(dst, src, sz); }
