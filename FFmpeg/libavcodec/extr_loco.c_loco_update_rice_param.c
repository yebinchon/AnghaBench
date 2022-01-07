
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sum; int count; } ;
typedef TYPE_1__ RICEContext ;



__attribute__((used)) static inline void loco_update_rice_param(RICEContext *r, int val)
{
    r->sum += val;
    r->count++;

    if (r->count == 16) {
        r->sum >>= 1;
        r->count >>= 1;
    }
}
