
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static void sorted_array_insert(uint32_t* array, int* size, uint32_t item)
{
    int pos;
    for (pos = *size; pos>0; pos--) {
        if (array[pos-1] < item) break;
        array[pos] = array[pos-1];
    }
    array[pos]=item;
    (*size)++;
}
