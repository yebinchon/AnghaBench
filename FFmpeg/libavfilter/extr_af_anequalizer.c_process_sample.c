
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FoSection ;


 int FILTER_ORDER ;
 double section_process (int *,double) ;

__attribute__((used)) static double process_sample(FoSection *s1, double in)
{
    double p0 = in, p1;
    int i;

    for (i = 0; i < FILTER_ORDER / 2; i++) {
        p1 = section_process(&s1[i], p0);
        p0 = p1;
    }

    return p1;
}
