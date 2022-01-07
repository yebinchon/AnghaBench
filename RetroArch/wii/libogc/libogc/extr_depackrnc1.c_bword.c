
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long bword (unsigned char *p) {
    unsigned long n;
    n = p[0];
    n = (n << 8) + p[1];
    return n;
}
