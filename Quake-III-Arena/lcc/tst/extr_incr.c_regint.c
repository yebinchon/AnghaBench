
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
regint() {
 register int x, *p;

 x = *p++;
 x = *++p;
 x = *p--;
 x = *--p;
}
