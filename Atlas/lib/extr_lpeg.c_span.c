
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strspn (char const*,char const*) ;

__attribute__((used)) static const char *span (const void *ud, const char *o,
                                         const char *s,
                                         const char *e) {
  const char *u = (const char *)ud;
  (void)o; (void)e;
  return s + strspn(s, u);
}
