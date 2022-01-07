
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFDIFFSIGN (double const,double const) ;

__attribute__((used)) static int cmp(const void *a, const void *b)
{
    return FFDIFFSIGN(*(const double *)a, *(const double *)b);
}
