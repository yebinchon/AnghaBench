
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ABS (int) ;


 scalar_t__ is_plant (int) ;

int is_obstacle(int w) {
    w = ABS(w);
    if (is_plant(w)) {
        return 0;
    }
    switch (w) {
        case 128:
        case 129:
            return 0;
        default:
            return 1;
    }
}
