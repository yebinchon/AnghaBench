
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {scalar_t__ efuse_block; int bit_count; int bit_start; } ;
typedef TYPE_1__ esp_efuse_desc_t ;
typedef scalar_t__ (* efuse_func_proc_t ) (int,scalar_t__,int,int,void*,int*) ;


 scalar_t__ ESP_ERR_CODING ;
 int ESP_LOGD (int ,char*,int,int,int,int) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int MIN (size_t,int) ;
 int TAG ;
 int assert (int) ;
 int check_range_of_bits (scalar_t__,int ,int ) ;
 int esp_efuse_get_field_size (TYPE_1__ const**) ;
 int get_count_bits_in_reg (int ,int ,int) ;
 int get_reg_num (int ,int ,int) ;
 int get_starting_bit_num_in_reg (int ,int) ;

esp_err_t esp_efuse_utility_process(const esp_efuse_desc_t* field[], void* ptr, size_t ptr_size_bits, efuse_func_proc_t func_proc)
{
    esp_err_t err = ESP_OK;
    int bits_counter = 0;


    int field_len = esp_efuse_get_field_size(field);
    int req_size = (ptr_size_bits == 0) ? field_len : MIN(ptr_size_bits, field_len);

    int i = 0;
    while (err == ESP_OK && req_size > bits_counter && field[i] != ((void*)0)) {
        if (check_range_of_bits(field[i]->efuse_block, field[i]->bit_start, field[i]->bit_count) == 0) {
            ESP_LOGE(TAG, "Range of data does not match the coding scheme");
            err = ESP_ERR_CODING;
        }
        int i_reg = 0;
        int num_reg;
        while (err == ESP_OK && req_size > bits_counter &&
                (num_reg = get_reg_num(field[i]->bit_start, field[i]->bit_count, i_reg)) != -1) {

            int start_bit = get_starting_bit_num_in_reg(field[i]->bit_start, i_reg);
            int num_bits = get_count_bits_in_reg(field[i]->bit_start, field[i]->bit_count, i_reg);
            if ((bits_counter + num_bits) > req_size) {
                num_bits = req_size - bits_counter;
            }
            ESP_LOGD(TAG, "In EFUSE_BLK%d__DATA%d_REG is used %d bits starting with %d bit",
                    (int)field[i]->efuse_block, num_reg, num_bits, start_bit);
            err = func_proc(num_reg, field[i]->efuse_block, start_bit, num_bits, ptr, &bits_counter);
            ++i_reg;
        }
        i++;
    }
    assert(bits_counter <= req_size);
    return err;
}
