
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atom_new (char const*,int) ;

char *stringn(const char *str, int len) {
 return (char *)Atom_new(str, len);
}
