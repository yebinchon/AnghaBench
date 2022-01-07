
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rounddown10 (int) ;

__attribute__((used)) static int
roundup(int n)
{
    int base = rounddown10(n);
    if (n <= base)
        return base;
    if (n <= 2*base)
        return 2*base;
    if (n <= 3*base)
        return 3*base;
    if (n <= 5*base)
        return 5*base;
    return 10*base;
}
