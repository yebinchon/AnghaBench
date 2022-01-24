#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float** opt; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ NellyMoserEncodeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,float) ; 
 int FUNC1 (int,float) ; 
 float INFINITY ; 
 int NELLY_BANDS ; 
 int OPT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 float FUNC3 (int,float,int) ; 
 int* ff_nelly_delta_table ; 
 size_t* ff_nelly_init_table ; 
 scalar_t__ FUNC4 (float) ; 
 size_t** path ; 
 int /*<<< orphan*/ * FUNC5 (size_t*) ; 

__attribute__((used)) static void FUNC6(NellyMoserEncodeContext *s, float *cand, int *idx_table)
{
    int i, j, band, best_idx;
    float power_candidate, best_val;

    float  (*opt )[OPT_SIZE] = s->opt ;
    FUNC5(*path)[OPT_SIZE] = s->path;

    for (i = 0; i < NELLY_BANDS * OPT_SIZE; i++) {
        opt[0][i] = INFINITY;
    }

    for (i = 0; i < 64; i++) {
        opt[0][ff_nelly_init_table[i]] = FUNC3(cand[0], ff_nelly_init_table[i], 0);
        path[0][ff_nelly_init_table[i]] = i;
    }

    for (band = 1; band < NELLY_BANDS; band++) {
        int q, c = 0;
        float tmp;
        int idx_min, idx_max, idx;
        power_candidate = cand[band];
        for (q = 1000; !c && q < OPT_SIZE; q <<= 2) {
            idx_min = FUNC0(0, cand[band] - q);
            idx_max = FUNC1(OPT_SIZE, cand[band - 1] + q);
            for (i = FUNC0(0, cand[band - 1] - q); i < FUNC1(OPT_SIZE, cand[band - 1] + q); i++) {
                if ( FUNC4(opt[band - 1][i]) )
                    continue;
                for (j = 0; j < 32; j++) {
                    idx = i + ff_nelly_delta_table[j];
                    if (idx > idx_max)
                        break;
                    if (idx >= idx_min) {
                        tmp = opt[band - 1][i] + FUNC3(idx, power_candidate, band);
                        if (opt[band][idx] > tmp) {
                            opt[band][idx] = tmp;
                            path[band][idx] = j;
                            c = 1;
                        }
                    }
                }
            }
        }
        FUNC2(c); //FIXME
    }

    best_val = INFINITY;
    best_idx = -1;
    band = NELLY_BANDS - 1;
    for (i = 0; i < OPT_SIZE; i++) {
        if (best_val > opt[band][i]) {
            best_val = opt[band][i];
            best_idx = i;
        }
    }
    for (band = NELLY_BANDS - 1; band >= 0; band--) {
        idx_table[band] = path[band][best_idx];
        if (band) {
            best_idx -= ff_nelly_delta_table[path[band][best_idx]];
        }
    }
}