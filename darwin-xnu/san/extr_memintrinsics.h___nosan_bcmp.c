
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcmp (void const*,void const*,size_t) ;

__attribute__((used)) static inline int __nosan_bcmp(const void *a, const void *b, size_t sz) { return bcmp(a, b, sz); }
