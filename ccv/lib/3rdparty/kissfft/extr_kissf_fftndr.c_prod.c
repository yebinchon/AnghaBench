
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int prod(const int *dims, int ndims)
{
    int x=1;
    while (ndims--)
        x *= *dims++;
    return x;
}
