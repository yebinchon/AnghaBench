
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clip23 (int) ;

__attribute__((used)) static void clp_v(int *input, int len)
{
    int i;

    for (i = 0; i < len; i++)
        input[i] = clip23(input[i]);
}
