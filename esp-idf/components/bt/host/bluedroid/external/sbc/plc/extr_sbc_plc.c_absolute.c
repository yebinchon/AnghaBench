
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float absolute(float x){
    if (x < 0) {
        x = -x;
    }

    return x;
}
