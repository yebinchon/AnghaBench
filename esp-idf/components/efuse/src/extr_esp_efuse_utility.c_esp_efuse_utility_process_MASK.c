#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_err_t ;
struct TYPE_4__ {scalar_t__ efuse_block; int /*<<< orphan*/  bit_count; int /*<<< orphan*/  bit_start; } ;
typedef  TYPE_1__ esp_efuse_desc_t ;
typedef  scalar_t__ (* efuse_func_proc_t ) (int,scalar_t__,int,int,void*,int*) ;

/* Variables and functions */
 scalar_t__ ESP_ERR_CODING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__ const**) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

esp_err_t FUNC9(const esp_efuse_desc_t* field[], void* ptr, size_t ptr_size_bits, efuse_func_proc_t func_proc)
{
    esp_err_t err = ESP_OK;
    int bits_counter = 0;

    // get and check size.
    int field_len = FUNC5(field);
    int req_size = (ptr_size_bits == 0) ? field_len : FUNC2(ptr_size_bits, field_len);

    int i = 0;
    while (err == ESP_OK && req_size > bits_counter && field[i] != NULL) {
        if (FUNC4(field[i]->efuse_block, field[i]->bit_start, field[i]->bit_count) == false) {
            FUNC1(TAG, "Range of data does not match the coding scheme");
            err = ESP_ERR_CODING;
        }
        int i_reg = 0;
        int num_reg;
        while (err == ESP_OK && req_size > bits_counter &&
                (num_reg = FUNC7(field[i]->bit_start, field[i]->bit_count, i_reg)) != -1) {

            int start_bit = FUNC8(field[i]->bit_start, i_reg);
            int num_bits = FUNC6(field[i]->bit_start, field[i]->bit_count, i_reg);
            if ((bits_counter + num_bits) > req_size) { // Limits the length of the field.
                num_bits = req_size - bits_counter;
            }
            FUNC0(TAG, "In EFUSE_BLK%d__DATA%d_REG is used %d bits starting with %d bit",
                    (int)field[i]->efuse_block, num_reg, num_bits, start_bit);
            err = func_proc(num_reg, field[i]->efuse_block, start_bit, num_bits, ptr, &bits_counter);
            ++i_reg;
        }
        i++;
    }
    FUNC3(bits_counter <= req_size);
    return err;
}