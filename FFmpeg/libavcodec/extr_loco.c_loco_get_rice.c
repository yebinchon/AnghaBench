
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int run; scalar_t__ save; int run2; int lossy; int gb; } ;
typedef TYPE_1__ RICEContext ;


 int INT_MAX ;
 int INT_MIN ;
 int get_bits_left (int *) ;
 void* get_ur_golomb_jpegls (int *,int,int ,int ) ;
 int loco_get_rice_param (TYPE_1__*) ;
 int loco_update_rice_param (TYPE_1__*,int) ;

__attribute__((used)) static inline int loco_get_rice(RICEContext *r)
{
    int v;
    if (r->run > 0) {
        r->run--;
        loco_update_rice_param(r, 0);
        return 0;
    }
    if (get_bits_left(&r->gb) < 1)
        return INT_MIN;
    v = get_ur_golomb_jpegls(&r->gb, loco_get_rice_param(r), INT_MAX, 0);
    loco_update_rice_param(r, (v + 1) >> 1);
    if (!v) {
        if (r->save >= 0) {
            r->run = get_ur_golomb_jpegls(&r->gb, 2, INT_MAX, 0);
            if (r->run > 1)
                r->save += r->run + 1;
            else
                r->save -= 3;
        } else
            r->run2++;
    } else {
        v = ((v >> 1) + r->lossy) ^ -(v & 1);
        if (r->run2 > 0) {
            if (r->run2 > 2)
                r->save += r->run2;
            else
                r->save -= 3;
            r->run2 = 0;
        }
    }

    return v;
}
