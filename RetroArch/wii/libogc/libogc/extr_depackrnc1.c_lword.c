
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long lword (unsigned char *p) {
    unsigned long n;
    n = p[1];
    n = (n << 8) + p[0];
    return n;
}
