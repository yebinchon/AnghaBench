
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bit_count; } ;
typedef TYPE_1__ esp_efuse_desc_t ;



int esp_efuse_get_field_size(const esp_efuse_desc_t* field[])
{
    int bits_counter = 0;
    if (field != ((void*)0)) {
        int i = 0;
        while (field[i] != ((void*)0)) {
            bits_counter += field[i]->bit_count;
            ++i;
        }
    }
    return bits_counter;
}
