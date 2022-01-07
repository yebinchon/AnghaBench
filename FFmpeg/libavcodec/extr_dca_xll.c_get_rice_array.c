
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int GetBitContext ;


 int get_rice (int *,int) ;

__attribute__((used)) static void get_rice_array(GetBitContext *gb, int32_t *array, int size, int k)
{
    int i;

    for (i = 0; i < size; i++)
        array[i] = get_rice(gb, k);
}
