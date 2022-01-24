#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct flash_test_ctx {int offset; int fail; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int SPI_FLASH_SEC_SIZE ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int const) ; 
 scalar_t__ FUNC2 (int const,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int const,int /*<<< orphan*/  const*,int) ; 
 int start ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *arg)
{
    struct flash_test_ctx *ctx = (struct flash_test_ctx *) arg;
    FUNC4(100 / portTICK_PERIOD_MS);
    const uint32_t sector = start / SPI_FLASH_SEC_SIZE + ctx->offset;
    FUNC0("t%d\n", sector);
    FUNC0("es%d\n", sector);
    if (FUNC1(sector) != ESP_OK) {
        ctx->fail = true;
        FUNC0("Erase failed\r\n");
        FUNC6(ctx->done);
        FUNC5(NULL);
    }
    FUNC0("ed%d\n", sector);

    FUNC4(0 / portTICK_PERIOD_MS);

    uint32_t val = 0xabcd1234;
    for (uint32_t offset = 0; offset < SPI_FLASH_SEC_SIZE; offset += 4) {
        if (FUNC3(sector * SPI_FLASH_SEC_SIZE + offset, (const uint8_t *) &val, 4) != ESP_OK) {
            FUNC0("Write failed at offset=%d\r\n", offset);
            ctx->fail = true;
            break;
        }
    }
    FUNC0("wd%d\n", sector);

    FUNC4(0 / portTICK_PERIOD_MS);

    uint32_t val_read;
    for (uint32_t offset = 0; offset < SPI_FLASH_SEC_SIZE; offset += 4) {
        if (FUNC2(sector * SPI_FLASH_SEC_SIZE + offset, (uint8_t *) &val_read, 4) != ESP_OK) {
            FUNC0("Read failed at offset=%d\r\n", offset);
            ctx->fail = true;
            break;
        }
        if (val_read != val) {
            FUNC0("Read invalid value=%08x at offset=%d\r\n", val_read, offset);
            ctx->fail = true;
            break;
        }
    }
    FUNC0("td%d\n", sector);
    FUNC6(ctx->done);
    FUNC5(NULL);
}