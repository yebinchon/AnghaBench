
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** ref_cache; int*** mv_cache; int list_count; } ;
typedef TYPE_1__ H264SliceContext ;


 int FFABS (int) ;

__attribute__((used)) static int check_mv(H264SliceContext *sl, long b_idx, long bn_idx, int mvy_limit)
{
    int v;

    v = sl->ref_cache[0][b_idx] != sl->ref_cache[0][bn_idx];
    if (!v && sl->ref_cache[0][b_idx] != -1)
        v = sl->mv_cache[0][b_idx][0] - sl->mv_cache[0][bn_idx][0] + 3 >= 7U |
           FFABS(sl->mv_cache[0][b_idx][1] - sl->mv_cache[0][bn_idx][1]) >= mvy_limit;

    if (sl->list_count == 2) {
        if(!v)
            v = sl->ref_cache[1][b_idx] != sl->ref_cache[1][bn_idx] |
                sl->mv_cache[1][b_idx][0] - sl->mv_cache[1][bn_idx][0] + 3 >= 7U |
                FFABS(sl->mv_cache[1][b_idx][1] - sl->mv_cache[1][bn_idx][1]) >= mvy_limit;

        if(v){
            if (sl->ref_cache[0][b_idx] != sl->ref_cache[1][bn_idx] |
                sl->ref_cache[1][b_idx] != sl->ref_cache[0][bn_idx])
                return 1;
            return
                sl->mv_cache[0][b_idx][0] - sl->mv_cache[1][bn_idx][0] + 3 >= 7U |
                FFABS(sl->mv_cache[0][b_idx][1] - sl->mv_cache[1][bn_idx][1]) >= mvy_limit |
                sl->mv_cache[1][b_idx][0] - sl->mv_cache[0][bn_idx][0] + 3 >= 7U |
                FFABS(sl->mv_cache[1][b_idx][1] - sl->mv_cache[0][bn_idx][1]) >= mvy_limit;
        }
    }

    return v;
}
