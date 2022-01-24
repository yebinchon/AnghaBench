#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* read_mode; } ;
typedef  TYPE_1__ esp_flash_t ;
typedef  void* esp_flash_io_mode_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_FLASH_NO_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ ESP_OK ; 
 void* SPI_FLASH_QOUT ; 
 void* SPI_FLASH_SLOWRD ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_1__*) ; 
 TYPE_1__* esp_flash_default_chip ; 
 scalar_t__ FUNC6 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC8(esp_flash_t* chip)
{
    bool qe;
    if (chip == NULL) {
        chip = esp_flash_default_chip;
    }
    esp_flash_io_mode_t io_mode_before = chip->read_mode;
    esp_err_t ret = FUNC6(chip, &qe);
    FUNC4(ret);

    bool is_winbond_chip = FUNC5(chip);

    for (int i = 0; i < 4; i ++) {
        FUNC2(TAG, "write qe: %d->%d", qe, !qe);
        qe = !qe;
        chip->read_mode = qe? SPI_FLASH_QOUT: SPI_FLASH_SLOWRD;
        ret = FUNC7(chip, qe);
        if (is_winbond_chip && !qe && ret == ESP_ERR_FLASH_NO_RESPONSE) {
            //allows clear qe failure for Winbond chips
            ret = ESP_OK;
        }
        FUNC4(ret);

        bool qe_read;
        ret = FUNC6(chip, &qe_read);
        FUNC4(ret);
        FUNC0(TAG, "qe read: %d", qe_read);
        if (qe != qe_read && !qe && is_winbond_chip) {
            FUNC1(TAG, "cannot clear QE bit, this may be normal for Winbond chips.");
            chip->read_mode = io_mode_before;
            return;
        }
        FUNC3(qe, qe_read);
    }
    //restore the io_mode after test
    chip->read_mode = io_mode_before;
}