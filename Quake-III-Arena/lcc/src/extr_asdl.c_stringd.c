
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atom_int (long) ;

char *stringd(long n) {
 return (char *)Atom_int(n);
}
