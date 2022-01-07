
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int is_plant(int w) {
    switch (w) {
        case 130:
        case 128:
        case 132:
        case 133:
        case 131:
        case 129:
        case 134:
            return 1;
        default:
            return 0;
    }
}
