
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atom_string (char const*) ;

char *string(const char *str) {
 return (char *)Atom_string(str);
}
