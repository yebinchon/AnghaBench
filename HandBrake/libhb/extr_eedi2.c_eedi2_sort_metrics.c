
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void eedi2_sort_metrics( int *order, const int length )
{
    int i;
    for( i = 1; i < length; ++i )
    {
        int j = i;
        const int temp = order[j];
        while( j > 0 && order[j-1] > temp )
        {
            order[j] = order[j-1];
            --j;
        }
        order[j] = temp;
    }
}
