
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int spi_device_handle_t ;
struct TYPE_4__ {int databytes; int data; int cmd; } ;
typedef TYPE_1__ lcd_init_cmd_t ;


 int GPIO_MODE_OUTPUT ;
 int LCD_TYPE_ILI ;
 int LCD_TYPE_ST ;
 int PIN_NUM_BCKL ;
 int PIN_NUM_DC ;
 int PIN_NUM_RST ;
 int gpio_set_direction (int ,int ) ;
 int gpio_set_level (int ,int) ;
 TYPE_1__* ili_init_cmds ;
 int lcd_cmd (int ,int ) ;
 int lcd_data (int ,int ,int) ;
 int lcd_get_id (int ) ;
 int portTICK_RATE_MS ;
 int printf (char*,...) ;
 TYPE_1__* st_init_cmds ;
 int vTaskDelay (int) ;

void lcd_init(spi_device_handle_t spi)
{
    int cmd=0;
    const lcd_init_cmd_t* lcd_init_cmds;


    gpio_set_direction(PIN_NUM_DC, GPIO_MODE_OUTPUT);
    gpio_set_direction(PIN_NUM_RST, GPIO_MODE_OUTPUT);
    gpio_set_direction(PIN_NUM_BCKL, GPIO_MODE_OUTPUT);


    gpio_set_level(PIN_NUM_RST, 0);
    vTaskDelay(100 / portTICK_RATE_MS);
    gpio_set_level(PIN_NUM_RST, 1);
    vTaskDelay(100 / portTICK_RATE_MS);


    uint32_t lcd_id = lcd_get_id(spi);
    int lcd_detected_type = 0;
    int lcd_type;

    printf("LCD ID: %08X\n", lcd_id);
    if ( lcd_id == 0 ) {

        lcd_detected_type = LCD_TYPE_ILI;
        printf("ILI9341 detected.\n");
    } else {

        lcd_detected_type = LCD_TYPE_ST;
        printf("ST7789V detected.\n");
    }
    if ( lcd_type == LCD_TYPE_ST ) {
        printf("LCD ST7789V initialization.\n");
        lcd_init_cmds = st_init_cmds;
    } else {
        printf("LCD ILI9341 initialization.\n");
        lcd_init_cmds = ili_init_cmds;
    }


    while (lcd_init_cmds[cmd].databytes!=0xff) {
        lcd_cmd(spi, lcd_init_cmds[cmd].cmd);
        lcd_data(spi, lcd_init_cmds[cmd].data, lcd_init_cmds[cmd].databytes&0x1F);
        if (lcd_init_cmds[cmd].databytes&0x80) {
            vTaskDelay(100 / portTICK_RATE_MS);
        }
        cmd++;
    }


    gpio_set_level(PIN_NUM_BCKL, 0);
}
