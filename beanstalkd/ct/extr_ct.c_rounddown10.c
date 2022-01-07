
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
rounddown10(int n)
{
    int tens = 0;

    while (n >= 10) {
        n = n / 10;
        tens++;
    }

    int i, result = 1;
    for (i = 0; i < tens; i++) {
        result *= 10;
    }
    return result;
}
