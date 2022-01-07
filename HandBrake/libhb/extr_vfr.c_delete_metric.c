
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (double*,double*,int) ;

__attribute__((used)) static void delete_metric(double * metrics, int pos, int size)
{
    double * dst = &metrics[pos];
    double * src = &metrics[pos + 1];
    int msize = (size - (pos + 1)) * sizeof(double);
    memmove(dst, src, msize);
}
