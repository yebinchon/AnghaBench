
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int round (int) ;

__attribute__((used)) static int comparef(const void *a, const void *b)
{
    const float *aa = a, *bb = b;
    return round(aa - bb);
}
