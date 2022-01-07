
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float bessel_I_0(float x)
{
    float term = 1, sum = 1, last_sum, x2 = x / 2;
    int i = 1;

    do {
        float y = x2 / i++;

        last_sum = sum;
        sum += term *= y * y;
    } while (sum != last_sum);

    return sum;
}
