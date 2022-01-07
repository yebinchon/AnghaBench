
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* s; } ;
typedef TYPE_1__ cl_float2 ;


 double fabs (double) ;

__attribute__((used)) static bool points_not_collinear(const cl_float2 **points)
{
    int j, k, i = 2;

    for (j = 0; j < i; j++) {
        double dx1 = points[j]->s[0] - points[i]->s[0];
        double dy1 = points[j]->s[1] - points[i]->s[1];

        for (k = 0; k < j; k++) {
            double dx2 = points[k]->s[0] - points[i]->s[0];
            double dy2 = points[k]->s[1] - points[i]->s[1];




            if (fabs(dx2*dy1 - dy2*dx1) <= 1.0) {
                return 0;
            }
        }
    }

    return 1;
}
