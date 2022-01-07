
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int esp_efuse_utility_get_number_of_items(int bits, int size_of_base)
{
    return bits / size_of_base + (bits % size_of_base > 0 ? 1 : 0);
}
