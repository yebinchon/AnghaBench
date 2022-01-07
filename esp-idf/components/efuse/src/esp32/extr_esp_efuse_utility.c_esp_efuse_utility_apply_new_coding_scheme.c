
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int reg ;
typedef scalar_t__ esp_err_t ;
typedef scalar_t__ esp_efuse_coding_scheme_t ;
typedef int buf_w_data ;
struct TYPE_2__ {scalar_t__ start; } ;


 int COUNT_EFUSE_BLOCKS ;
 int COUNT_EFUSE_REG_PER_BLOCK ;
 scalar_t__ EFUSE_CODING_SCHEME_3_4 ;
 scalar_t__ EFUSE_CODING_SCHEME_NONE ;
 scalar_t__ EFUSE_CODING_SCHEME_REPEAT ;
 scalar_t__ ESP_ERR_CODING ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int REG_WRITE (scalar_t__,scalar_t__) ;
 int TAG ;
 scalar_t__ esp_efuse_get_coding_scheme (int) ;
 scalar_t__ esp_efuse_utility_apply_34_encoding (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 TYPE_1__* range_write_addr_blocks ;
 int read_r_data (int,scalar_t__*) ;
 int read_w_data_and_check_fill (int,scalar_t__*) ;

esp_err_t esp_efuse_utility_apply_new_coding_scheme()
{
    uint8_t buf_w_data[COUNT_EFUSE_REG_PER_BLOCK * 4];
    uint8_t buf_r_data[COUNT_EFUSE_REG_PER_BLOCK * 4];
    uint32_t reg[COUNT_EFUSE_REG_PER_BLOCK];

    for (int num_block = 1; num_block < COUNT_EFUSE_BLOCKS; num_block++) {
        esp_efuse_coding_scheme_t scheme = esp_efuse_get_coding_scheme(num_block);

        if (scheme != EFUSE_CODING_SCHEME_NONE) {
            memset(buf_w_data, 0, sizeof(buf_w_data));
            memset((uint8_t*)reg, 0, sizeof(reg));
            if (read_w_data_and_check_fill(num_block, (uint32_t*)buf_w_data) == 1) {
                read_r_data(num_block, (uint32_t*)buf_r_data);
                if (scheme == EFUSE_CODING_SCHEME_3_4) {
                    if (*((uint32_t*)buf_w_data + 6) != 0 || *((uint32_t*)buf_w_data + 7) != 0) {
                        return ESP_ERR_CODING;
                    }
                    for (int i = 0; i < 24; ++i) {
                        if (buf_w_data[i] != 0) {
                            int st_offset_buf = (i / 6) * 6;

                            for (int n = st_offset_buf; n < st_offset_buf + 6; ++n) {
                                if (buf_r_data[n] != 0) {
                                    ESP_LOGE(TAG, "Bits are not empty. Write operation is forbidden.");
                                    return ESP_ERR_CODING;
                                }
                            }

                            esp_err_t err = esp_efuse_utility_apply_34_encoding(&buf_w_data[st_offset_buf], reg, 6);
                            if (err != ESP_OK) {
                                return err;
                            }

                            int num_reg = (st_offset_buf / 6) * 2;
                            for (int r = 0; r < 2; r++) {
                                REG_WRITE(range_write_addr_blocks[num_block].start + (num_reg + r) * 4, reg[r]);
                            }
                            i = st_offset_buf + 5;
                        }
                    }
                } else if (scheme == EFUSE_CODING_SCHEME_REPEAT) {
                    uint32_t* buf_32 = (uint32_t*)buf_w_data;
                    for (int i = 4; i < 8; ++i) {
                        if (*(buf_32 + i) != 0) {
                            return ESP_ERR_CODING;
                        }
                    }
                    for (int i = 0; i < 4; ++i) {
                        if (buf_32[i] != 0) {
                            REG_WRITE(range_write_addr_blocks[num_block].start + i * 4, buf_32[i]);
                            REG_WRITE(range_write_addr_blocks[num_block].start + (i + 4) * 4, buf_32[i]);
                        }
                    }
                }
            }
        }
    }
    return ESP_OK;
}
