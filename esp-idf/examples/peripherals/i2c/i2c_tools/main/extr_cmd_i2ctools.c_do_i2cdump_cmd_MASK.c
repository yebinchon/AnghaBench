#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  i2c_cmd_handle_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {TYPE_2__* size; TYPE_1__* chip_address; int /*<<< orphan*/  end; } ;
struct TYPE_5__ {int* ival; scalar_t__ count; } ;
struct TYPE_4__ {int* ival; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CHECK_EN ; 
 int /*<<< orphan*/  ACK_VAL ; 
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
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
 TYPE_3__ i2cdump_args ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC16(int argc, char **argv)
{
    int nerrors = FUNC1(argc, argv, (void **)&i2cdump_args);
    if (nerrors != 0) {
        FUNC2(stderr, i2cdump_args.end, argv[0]);
        return 0;
    }

    /* Check chip address: "-c" option */
    int chip_addr = i2cdump_args.chip_address->ival[0];
    /* Check read size: "-s" option */
    int size = 1;
    if (i2cdump_args.size->count) {
        size = i2cdump_args.size->ival[0];
    }
    if (size != 1 && size != 2 && size != 4) {
        FUNC0(TAG, "Wrong read size. Only support 1,2,4");
        return 1;
    }
    FUNC9();
    FUNC7(i2c_port, I2C_MODE_MASTER, I2C_MASTER_RX_BUF_DISABLE, I2C_MASTER_TX_BUF_DISABLE, 0);
    uint8_t data_addr;
    uint8_t data[4];
    int32_t block[16];
    FUNC15("     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f"
           "    0123456789abcdef\r\n");
    for (int i = 0; i < 128; i += 16) {
        FUNC15("%02x: ", i);
        for (int j = 0; j < 16; j += size) {
            FUNC3(stdout);
            data_addr = i + j;
            i2c_cmd_handle_t cmd = FUNC4();
            FUNC12(cmd);
            FUNC14(cmd, chip_addr << 1 | WRITE_BIT, ACK_CHECK_EN);
            FUNC14(cmd, data_addr, ACK_CHECK_EN);
            FUNC12(cmd);
            FUNC14(cmd, chip_addr << 1 | READ_BIT, ACK_CHECK_EN);
            if (size > 1) {
                FUNC10(cmd, data, size - 1, ACK_VAL);
            }
            FUNC11(cmd, data + size - 1, NACK_VAL);
            FUNC13(cmd);
            esp_err_t ret = FUNC8(i2c_port, cmd, 50 / portTICK_RATE_MS);
            FUNC5(cmd);
            if (ret == ESP_OK) {
                for (int k = 0; k < size; k++) {
                    FUNC15("%02x ", data[k]);
                    block[j + k] = data[k];
                }
            } else {
                for (int k = 0; k < size; k++) {
                    FUNC15("XX ");
                    block[j + k] = -1;
                }
            }
        }
        FUNC15("   ");
        for (int k = 0; k < 16; k++) {
            if (block[k] < 0) {
                FUNC15("X");
            }
            if ((block[k] & 0xff) == 0x00 || (block[k] & 0xff) == 0xff) {
                FUNC15(".");
            } else if ((block[k] & 0xff) < 32 || (block[k] & 0xff) >= 127) {
                FUNC15("?");
            } else {
                FUNC15("%c", block[k] & 0xff);
            }
        }
        FUNC15("\r\n");
    }
    FUNC6(i2c_port);
    return 0;
}