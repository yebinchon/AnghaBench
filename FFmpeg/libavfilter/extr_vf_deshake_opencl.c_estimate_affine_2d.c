
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int num_model_matches; TYPE_1__* model_matches; } ;
struct TYPE_12__ {int ransac_err; int alfg; } ;
struct TYPE_11__ {int should_consider; } ;
typedef TYPE_1__ MotionVector ;
typedef TYPE_2__ DeshakeOpenCLContext ;
typedef TYPE_3__ DebugMatches ;


 int FFMAX (int const,int) ;
 int find_inliers (TYPE_1__*,int const,double*,int ,double const) ;
 int get_subset (int *,TYPE_1__*,int const,TYPE_1__*,int) ;
 int ransac_update_num_iters (double const,double,int) ;
 int run_estimate_kernel (TYPE_1__*,double*) ;

__attribute__((used)) static bool estimate_affine_2d(
    DeshakeOpenCLContext *deshake_ctx,
    MotionVector *point_pairs,
    DebugMatches *debug_matches,
    const int num_point_pairs,
    double *model_out,
    const double threshold,
    const int max_iters,
    const double confidence
) {
    bool result = 0;
    double best_model[6], model[6];
    MotionVector pairs_subset[3], best_pairs[3];

    int iter, niters = FFMAX(max_iters, 1);
    int good_count, max_good_count = 0;


    if (num_point_pairs < 3) {
        return 0;
    } else if (num_point_pairs == 3) {

        run_estimate_kernel(point_pairs, model_out);

        for (int i = 0; i < 3; ++i) {
            point_pairs[i].should_consider = 1;
        }

        return 1;
    }

    for (iter = 0; iter < niters; ++iter) {
        bool found = get_subset(&deshake_ctx->alfg, point_pairs, num_point_pairs, pairs_subset, 10000);

        if (!found) {
            if (iter == 0) {
                return 0;
            }

            break;
        }

        run_estimate_kernel(pairs_subset, model);
        good_count = find_inliers(point_pairs, num_point_pairs, model, deshake_ctx->ransac_err, threshold);

        if (good_count > FFMAX(max_good_count, 2)) {
            for (int mi = 0; mi < 6; ++mi) {
                best_model[mi] = model[mi];
            }

            for (int pi = 0; pi < 3; pi++) {
                best_pairs[pi] = pairs_subset[pi];
            }

            max_good_count = good_count;
            niters = ransac_update_num_iters(
                confidence,
                (double)(num_point_pairs - good_count) / num_point_pairs,
                niters
            );
        }
    }

    if (max_good_count > 0) {
        for (int mi = 0; mi < 6; ++mi) {
            model_out[mi] = best_model[mi];
        }

        for (int pi = 0; pi < 3; ++pi) {
            debug_matches->model_matches[pi] = best_pairs[pi];
        }
        debug_matches->num_model_matches = 3;


        find_inliers(point_pairs, num_point_pairs, best_model, deshake_ctx->ransac_err, threshold);
        result = 1;
    }

    return result;
}
