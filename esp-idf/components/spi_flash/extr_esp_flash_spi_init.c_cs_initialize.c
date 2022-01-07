
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int uint32_t ;
struct TYPE_18__ {int os_func_data; TYPE_5__* os_func; } ;
typedef TYPE_6__ esp_flash_t ;
struct TYPE_19__ {int cs_io_num; size_t host_id; size_t cs_id; } ;
typedef TYPE_7__ esp_flash_spi_device_config_t ;
struct TYPE_20__ {int spics_in; int* spics_out; } ;
struct TYPE_17__ {int (* end ) (int ) ;int (* start ) (int ) ;} ;
struct TYPE_16__ {scalar_t__ pad_driver; } ;
struct TYPE_15__ {int data; } ;
struct TYPE_14__ {int oen_inv_sel; scalar_t__ oen_sel; } ;
struct TYPE_13__ {scalar_t__ sig_in_sel; } ;
struct TYPE_12__ {int enable_w1ts; TYPE_4__* pin; TYPE_3__ enable1_w1ts; TYPE_2__* func_out_sel_cfg; TYPE_1__* func_in_sel_cfg; } ;


 TYPE_11__ GPIO ;
 int * GPIO_PIN_MUX_REG ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int) ;
 int PIN_INPUT_ENABLE (int ) ;
 int gpio_matrix_in (int,int,int) ;
 int gpio_matrix_out (int,int,int,int) ;
 TYPE_8__* spi_periph_signal ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void cs_initialize(esp_flash_t *chip, const esp_flash_spi_device_config_t *config, bool use_iomux)
{



    int cs_io_num = config->cs_io_num;
    int spics_in = spi_periph_signal[config->host_id].spics_in;
    int spics_out = spi_periph_signal[config->host_id].spics_out[config->cs_id];
    uint32_t iomux_reg = GPIO_PIN_MUX_REG[cs_io_num];



    chip->os_func->start(chip->os_func_data);
    if (use_iomux) {
        GPIO.func_in_sel_cfg[spics_in].sig_in_sel = 0;
        PIN_INPUT_ENABLE(iomux_reg);
        GPIO.func_out_sel_cfg[spics_out].oen_sel = 0;
        GPIO.func_out_sel_cfg[spics_out].oen_inv_sel = 0;
        PIN_FUNC_SELECT(iomux_reg, 1);
    } else {
        PIN_INPUT_ENABLE(iomux_reg);
        if (cs_io_num < 32) {
            GPIO.enable_w1ts = (0x1 << cs_io_num);
        } else {
            GPIO.enable1_w1ts.data = (0x1 << (cs_io_num - 32));
        }
        GPIO.pin[cs_io_num].pad_driver = 0;
        gpio_matrix_out(cs_io_num, spics_out, 0, 0);
        if (config->cs_id == 0) {
            gpio_matrix_in(cs_io_num, spics_in, 0);
        }
        PIN_FUNC_SELECT(iomux_reg, PIN_FUNC_GPIO);
    }
    chip->os_func->end(chip->os_func_data);
}
