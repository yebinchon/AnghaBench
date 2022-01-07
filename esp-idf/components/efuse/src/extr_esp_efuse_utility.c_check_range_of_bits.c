
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_efuse_block_t ;


 int ESP_EFUSE_FIELD_CORRESPONDS_CODING_SCHEME (int ,int) ;

__attribute__((used)) static bool check_range_of_bits(esp_efuse_block_t blk, int offset_in_bits, int size_bits)
{
    int max_num_bit = offset_in_bits + size_bits;
    if (max_num_bit > 256) {
        return 0;
    } else {
        ESP_EFUSE_FIELD_CORRESPONDS_CODING_SCHEME(blk, max_num_bit);
    }
    return 1;
}
