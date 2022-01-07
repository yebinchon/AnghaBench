
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int should_consider; } ;
typedef TYPE_1__ MotionVector ;


 int compute_error (TYPE_1__*,int const,double const*,float*) ;

__attribute__((used)) static int find_inliers(
    MotionVector *point_pairs,
    const int num_point_pairs,
    const double *model,
    float *err,
    double thresh
) {
    float t = (float)(thresh * thresh);
    int i, n = num_point_pairs, num_inliers = 0;

    compute_error(point_pairs, num_point_pairs, model, err);

    for (i = 0; i < n; i++) {
        if (err[i] <= t) {

            point_pairs[i].should_consider = 1;
            num_inliers += 1;
        } else {
            point_pairs[i].should_consider = 0;
        }
    }

    return num_inliers;
}
