
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int is_destructable(int w) {
    switch (w) {
        case 128:
        case 129:
            return 0;
        default:
            return 1;
    }
}
