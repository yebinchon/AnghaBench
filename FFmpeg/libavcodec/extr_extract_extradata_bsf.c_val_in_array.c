
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int val_in_array(const int *arr, int len, int val)
{
    int i;
    for (i = 0; i < len; i++)
        if (arr[i] == val)
            return 1;
    return 0;
}
