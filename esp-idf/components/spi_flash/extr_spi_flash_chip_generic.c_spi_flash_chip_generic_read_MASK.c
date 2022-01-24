#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_2__* host; } ;
typedef  TYPE_1__ esp_flash_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {scalar_t__ (* read ) (TYPE_2__*,void*,scalar_t__,scalar_t__) ;int /*<<< orphan*/  max_read_bytes; } ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,void*,scalar_t__,scalar_t__) ; 

esp_err_t FUNC3(esp_flash_t *chip, void *buffer, uint32_t address, uint32_t length)
{
    esp_err_t err = ESP_OK;
    // Configure the host, and return
    FUNC1(chip);

    while (err == ESP_OK && length > 0) {
        uint32_t read_len = FUNC0(length, chip->host->max_read_bytes);
        err = chip->host->read(chip->host, buffer, address, read_len);

        buffer += read_len;
        length -= read_len;
        address += read_len;
    }

    return err;
}