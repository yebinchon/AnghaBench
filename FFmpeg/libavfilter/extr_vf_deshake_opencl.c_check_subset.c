
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cl_float2 ;
struct TYPE_4__ {int const p2; int const p1; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
typedef TYPE_2__ MotionVector ;


 scalar_t__ points_not_collinear (int const**) ;

__attribute__((used)) static bool check_subset(const MotionVector *pairs_subset)
{
    const cl_float2 *prev_points[] = {
        &pairs_subset[0].p.p1,
        &pairs_subset[1].p.p1,
        &pairs_subset[2].p.p1
    };

    const cl_float2 *curr_points[] = {
        &pairs_subset[0].p.p2,
        &pairs_subset[1].p.p2,
        &pairs_subset[2].p.p2
    };

    return points_not_collinear(prev_points) && points_not_collinear(curr_points);
}
