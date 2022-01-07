
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int poc; } ;
typedef TYPE_1__ H264Picture ;


 int INT_MAX ;
 int INT_MIN ;

__attribute__((used)) static int add_sorted(H264Picture **sorted, H264Picture * const *src,
                      int len, int limit, int dir)
{
    int i, best_poc;
    int out_i = 0;

    for (;;) {
        best_poc = dir ? INT_MIN : INT_MAX;

        for (i = 0; i < len; i++) {
            const int poc = src[i]->poc;
            if (((poc > limit) ^ dir) && ((poc < best_poc) ^ dir)) {
                best_poc = poc;
                sorted[out_i] = src[i];
            }
        }
        if (best_poc == (dir ? INT_MIN : INT_MAX))
            break;
        limit = sorted[out_i++]->poc - dir;
    }
    return out_i;
}
