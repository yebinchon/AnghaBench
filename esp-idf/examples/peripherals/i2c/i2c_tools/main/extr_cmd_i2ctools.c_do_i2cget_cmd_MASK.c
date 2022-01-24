#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  i2c_cmd_handle_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_8__ {TYPE_3__* data_length; TYPE_2__* register_address; TYPE_1__* chip_address; int /*<<< orphan*/  end; } ;
struct TYPE_7__ {int* ival; scalar_t__ count; } ;
struct TYPE_6__ {int* ival; scalar_t__ count; } ;
struct TYPE_5__ {int* ival; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CHECK_EN ; 
 int /*<<< orphan*/  ACK_VAL ; 
 scalar_t__ ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  I2C_MASTER_RX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MASTER_TX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MODE_MASTER ; 
 int /*<<< orphan*/  NACK_VAL ; 
 int READ_BIT ; 
 int /*<<< orphan*/  TAG ; 
 int WRITE_BIT ; 
 int FUNC1 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_port ; 
 TYPE_4__ i2cget_args ; 
 int* FUNC15 (int) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC17(int argc, char **argv)
{
    int nerrors = FUNC1(argc, argv, (void **)&i2cget_args);
    if (nerrors != 0) {
        FUNC2(stderr, i2cget_args.end, argv[0]);
        return 0;
    }

    /* Check chip address: "-c" option */
    int chip_addr = i2cget_args.chip_address->ival[0];
    /* Check register address: "-r" option */
    int data_addr = -1;
    if (i2cget_args.register_address->count) {
        data_addr = i2cget_args.register_address->ival[0];
    }
    /* Check data length: "-l" option */
    int len = 1;
    if (i2cget_args.data_length->count) {
        len = i2cget_args.data_length->ival[0];
    }
    uint8_t *data = FUNC15(len);

    FUNC9();
    FUNC7(i2c_port, I2C_MODE_MASTER, I2C_MASTER_RX_BUF_DISABLE, I2C_MASTER_TX_BUF_DISABLE, 0);
    i2c_cmd_handle_t cmd = FUNC4();
    FUNC12(cmd);
    if (data_addr != -1) {
        FUNC14(cmd, chip_addr << 1 | WRITE_BIT, ACK_CHECK_EN);
        FUNC14(cmd, data_addr, ACK_CHECK_EN);
        FUNC12(cmd);
    }
    FUNC14(cmd, chip_addr << 1 | READ_BIT, ACK_CHECK_EN);
    if (len > 1) {
        FUNC10(cmd, data, len - 1, ACK_VAL);
    }
    FUNC11(cmd, data + len - 1, NACK_VAL);
    FUNC13(cmd);
    esp_err_t ret = FUNC8(i2c_port, cmd, 1000 / portTICK_RATE_MS);
    FUNC5(cmd);
    if (ret == ESP_OK) {
        for (int i = 0; i < len; i++) {
            FUNC16("0x%02x ", data[i]);
            if ((i + 1) % 16 == 0) {
                FUNC16("\r\n");
            }
        }
        if (len % 16) {
            FUNC16("\r\n");
        }
    } else if (ret == ESP_ERR_TIMEOUT) {
        FUNC0(TAG, "Bus is busy");
    } else {
        FUNC0(TAG, "Read failed");
    }
    FUNC3(data);
    FUNC6(i2c_port);
    return 0;
}