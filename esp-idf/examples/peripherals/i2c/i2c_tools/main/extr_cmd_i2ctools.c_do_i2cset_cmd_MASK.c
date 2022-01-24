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
typedef  int /*<<< orphan*/  i2c_cmd_handle_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_8__ {TYPE_3__* data; TYPE_2__* register_address; TYPE_1__* chip_address; int /*<<< orphan*/  end; } ;
struct TYPE_7__ {int count; int* ival; } ;
struct TYPE_6__ {int* ival; scalar_t__ count; } ;
struct TYPE_5__ {int* ival; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CHECK_EN ; 
 scalar_t__ ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  I2C_MASTER_RX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MASTER_TX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MODE_MASTER ; 
 int /*<<< orphan*/  TAG ; 
 int WRITE_BIT ; 
 int FUNC2 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_port ; 
 TYPE_4__ i2cset_args ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC13(int argc, char **argv)
{
    int nerrors = FUNC2(argc, argv, (void **)&i2cset_args);
    if (nerrors != 0) {
        FUNC3(stderr, i2cset_args.end, argv[0]);
        return 0;
    }

    /* Check chip address: "-c" option */
    int chip_addr = i2cset_args.chip_address->ival[0];
    /* Check register address: "-r" option */
    int data_addr = 0;
    if (i2cset_args.register_address->count) {
        data_addr = i2cset_args.register_address->ival[0];
    }
    /* Check data: "-d" option */
    int len = i2cset_args.data->count;

    FUNC9();
    FUNC7(i2c_port, I2C_MODE_MASTER, I2C_MASTER_RX_BUF_DISABLE, I2C_MASTER_TX_BUF_DISABLE, 0);
    i2c_cmd_handle_t cmd = FUNC4();
    FUNC10(cmd);
    FUNC12(cmd, chip_addr << 1 | WRITE_BIT, ACK_CHECK_EN);
    if (i2cset_args.register_address->count) {
        FUNC12(cmd, data_addr, ACK_CHECK_EN);
    }
    for (int i = 0; i < len; i++) {
        FUNC12(cmd, i2cset_args.data->ival[i], ACK_CHECK_EN);
    }
    FUNC11(cmd);
    esp_err_t ret = FUNC8(i2c_port, cmd, 1000 / portTICK_RATE_MS);
    FUNC5(cmd);
    if (ret == ESP_OK) {
        FUNC0(TAG, "Write OK");
    } else if (ret == ESP_ERR_TIMEOUT) {
        FUNC1(TAG, "Bus is busy");
    } else {
        FUNC1(TAG, "Write Failed");
    }
    FUNC6(i2c_port);
    return 0;
}