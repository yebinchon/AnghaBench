
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_leading_ones(char c) {
    for (int i = 7; i >= 0; i--)
        if ((c & (1 << i)) == 0)
            return 7 - i;
    return 8;
}
