
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int sum; } ;
typedef TYPE_1__ RICEContext ;



__attribute__((used)) static int loco_get_rice_param(RICEContext *r)
{
    int cnt = 0;
    int val = r->count;

    while (r->sum > val && cnt < 9) {
        val <<= 1;
        cnt++;
    }

    return cnt;
}
