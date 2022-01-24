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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,void*,size_t) ; 

esp_err_t FUNC3(size_t dest_addr, void *src, size_t size, bool write_encrypted)
{
    if (write_encrypted) {
#if CONFIG_IDF_TARGET_ESP32
        return spi_flash_write_encrypted(dest_addr, src, size);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
        return SPI_Encrypt_Write(dest_addr, src, size);
#endif
    } else {
        return FUNC1(dest_addr, src, size);
    }
}