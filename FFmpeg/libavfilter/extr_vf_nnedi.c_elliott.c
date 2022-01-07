
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFABS (float) ;

__attribute__((used)) static void elliott(float *data, const int n)
{
    int i;

    for (i = 0; i < n; i++)
        data[i] = data[i] / (1.0f + FFABS(data[i]));
}
