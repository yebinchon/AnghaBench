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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  spi_device_handle_t ;
struct TYPE_4__ {int databytes; int /*<<< orphan*/  data; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ lcd_init_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int LCD_TYPE_ILI ; 
 int LCD_TYPE_ST ; 
 int /*<<< orphan*/  PIN_NUM_BCKL ; 
 int /*<<< orphan*/  PIN_NUM_DC ; 
 int /*<<< orphan*/  PIN_NUM_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* ili_init_cmds ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__* st_init_cmds ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(spi_device_handle_t spi)
{
    int cmd=0;
    const lcd_init_cmd_t* lcd_init_cmds;

    //Initialize non-SPI GPIOs
    FUNC0(PIN_NUM_DC, GPIO_MODE_OUTPUT);
    FUNC0(PIN_NUM_RST, GPIO_MODE_OUTPUT);
    FUNC0(PIN_NUM_BCKL, GPIO_MODE_OUTPUT);

    //Reset the display
    FUNC1(PIN_NUM_RST, 0);
    FUNC6(100 / portTICK_RATE_MS);
    FUNC1(PIN_NUM_RST, 1);
    FUNC6(100 / portTICK_RATE_MS);

    //detect LCD type
    uint32_t lcd_id = FUNC4(spi);
    int lcd_detected_type = 0;
    int lcd_type;

    FUNC5("LCD ID: %08X\n", lcd_id);
    if ( lcd_id == 0 ) {
        //zero, ili
        lcd_detected_type = LCD_TYPE_ILI;
        FUNC5("ILI9341 detected.\n");
    } else {
        // none-zero, ST
        lcd_detected_type = LCD_TYPE_ST;
        FUNC5("ST7789V detected.\n");
    }

#ifdef CONFIG_LCD_TYPE_AUTO
    lcd_type = lcd_detected_type;
#elif defined( CONFIG_LCD_TYPE_ST7789V )
    printf("kconfig: force CONFIG_LCD_TYPE_ST7789V.\n");
    lcd_type = LCD_TYPE_ST;
#elif defined( CONFIG_LCD_TYPE_ILI9341 )
    printf("kconfig: force CONFIG_LCD_TYPE_ILI9341.\n");
    lcd_type = LCD_TYPE_ILI;
#endif
    if ( lcd_type == LCD_TYPE_ST ) {
        FUNC5("LCD ST7789V initialization.\n");
        lcd_init_cmds = st_init_cmds;
    } else {
        FUNC5("LCD ILI9341 initialization.\n");
        lcd_init_cmds = ili_init_cmds;
    }

    //Send all the commands
    while (lcd_init_cmds[cmd].databytes!=0xff) {
        FUNC2(spi, lcd_init_cmds[cmd].cmd);
        FUNC3(spi, lcd_init_cmds[cmd].data, lcd_init_cmds[cmd].databytes&0x1F);
        if (lcd_init_cmds[cmd].databytes&0x80) {
            FUNC6(100 / portTICK_RATE_MS);
        }
        cmd++;
    }

    ///Enable backlight
    FUNC1(PIN_NUM_BCKL, 0);
}