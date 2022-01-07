
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;

__attribute__((used)) static void get_array(GetBitContext *gb, int32_t *array, int size, int n)
{
    int i;

    for (i = 0; i < size; i++)
        array[i] = get_bits(gb, n);
}
