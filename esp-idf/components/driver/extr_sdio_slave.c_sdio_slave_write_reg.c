
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int reg_spinlock; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int HOST_SLCHOST_CONF_W_REG (int) ;
 int SDIO_SLAVE_LOGE (char*) ;
 TYPE_1__ context ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t sdio_slave_write_reg(int pos, uint8_t reg)
{
    if (pos >= 28 && pos <= 31) {
        SDIO_SLAVE_LOGE("interrupt reg, please use sdio_slave_clear_int");
        return ESP_ERR_INVALID_ARG;
    }
    if (pos < 0 || pos >= 64) {
        SDIO_SLAVE_LOGE("write register address wrong");
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t addr = HOST_SLCHOST_CONF_W_REG(pos) & (~3);
    uint32_t shift = (pos % 4)*8;

    portENTER_CRITICAL(&context.reg_spinlock);
    int val = *(uint32_t*)addr;
    *(uint32_t*)addr = (val & ~(0xff << shift)) | (reg<<shift);
    portEXIT_CRITICAL(&context.reg_spinlock);
    return ESP_OK;
}
