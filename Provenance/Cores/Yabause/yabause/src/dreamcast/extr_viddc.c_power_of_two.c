
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int power_of_two(int num) {
    int ret = 8;

    while(ret < num)
        ret <<= 1;

    return ret;
}
