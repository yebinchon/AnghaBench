
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ABS (int) ;



 scalar_t__ is_plant (int) ;

int is_transparent(int w) {
    if (w == 130) {
        return 1;
    }
    w = ABS(w);
    if (is_plant(w)) {
        return 1;
    }
    switch (w) {
        case 130:
        case 129:
        case 128:
            return 1;
        default:
            return 0;
    }
}
