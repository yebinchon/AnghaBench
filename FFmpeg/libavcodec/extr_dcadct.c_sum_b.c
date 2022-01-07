
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void sum_b(const int *input, int *output, int len)
{
    int i;

    output[0] = input[0];
    for (i = 1; i < len; i++)
        output[i] = input[2 * i] + input[2 * i - 1];
}
