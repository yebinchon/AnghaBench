
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double log2 (double) ;

__attribute__((used)) static double midi(void *p, double f)
{
    return log2(f/440.0) * 12.0 + 69.0;
}
