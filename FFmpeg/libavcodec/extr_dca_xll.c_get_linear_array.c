
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int GetBitContext ;


 int get_linear (int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void get_linear_array(GetBitContext *gb, int32_t *array, int size, int n)
{
    int i;

    if (n == 0)
        memset(array, 0, sizeof(*array) * size);
    else for (i = 0; i < size; i++)
        array[i] = get_linear(gb, n);
}
