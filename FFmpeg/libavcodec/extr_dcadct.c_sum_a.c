
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void sum_a(const int *input, int *output, int len)
{
    int i;

    for (i = 0; i < len; i++)
        output[i] = input[2 * i] + input[2 * i + 1];
}
