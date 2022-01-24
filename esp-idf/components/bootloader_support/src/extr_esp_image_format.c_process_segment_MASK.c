#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_6__ {intptr_t load_addr; int data_len; } ;
typedef  TYPE_1__ esp_image_segment_header_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/ * bootloader_sha256_handle_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_IMAGE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,intptr_t,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (scalar_t__,int) ; 
 int MMAP_ALIGNED_MASK ; 
 scalar_t__ SOC_DRAM_HIGH ; 
 int SPI_FLASH_MMU_PAGE_SIZE ; 
 intptr_t STACK_LOAD_HEADROOM ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  _loader_text_end ; 
 int /*<<< orphan*/  _loader_text_start ; 
 scalar_t__ FUNC6 (int,TYPE_1__*,int,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (intptr_t const,intptr_t const,intptr_t,intptr_t const) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (intptr_t,int,int,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC12 (intptr_t) ; 
 int FUNC13 (intptr_t) ; 
 scalar_t__ FUNC14 (int,TYPE_1__*,int,int) ; 

__attribute__((used)) static esp_err_t FUNC15(int index, uint32_t flash_addr, esp_image_segment_header_t *header, bool silent, bool do_load, bootloader_sha256_handle_t sha_handle, uint32_t *checksum)
{
    esp_err_t err;

    /* read segment header */
    err = FUNC6(flash_addr, header, sizeof(esp_image_segment_header_t), true);
    if (err != ESP_OK) {
        FUNC1(TAG, "bootloader_flash_read failed at 0x%08x", flash_addr);
        return err;
    }
    if (sha_handle != NULL) {
        FUNC8(sha_handle, header, sizeof(esp_image_segment_header_t));
    }

    intptr_t load_addr = header->load_addr;
    uint32_t data_len = header->data_len;
    uint32_t data_addr = flash_addr + sizeof(esp_image_segment_header_t);

    FUNC3(TAG, "segment data length 0x%x data starts 0x%x", data_len, data_addr);

    err = FUNC14(index, header, data_addr, silent);
    if (err != ESP_OK) {
        return err;
    }

    if (data_len % 4 != 0) {
        FUNC4("unaligned segment length 0x%x", data_len);
    }

    bool is_mapping = FUNC13(load_addr);
    do_load = do_load && FUNC12(load_addr);

    if (!silent) {
        FUNC2(TAG, "segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s",
                 index, data_addr, load_addr,
                 data_len, data_len,
                 (do_load) ? "load" : (is_mapping) ? "map" : "");
    }


#ifdef BOOTLOADER_BUILD
    /* Before loading segment, check it doesn't clobber bootloader RAM. */
    if (do_load) {
        const intptr_t load_end = load_addr + data_len;
        if (load_end < (intptr_t) SOC_DRAM_HIGH) {
            /* Writing to DRAM */
            intptr_t sp = (intptr_t)get_sp();
            if (load_end > sp - STACK_LOAD_HEADROOM) {
                /* Bootloader .data/.rodata/.bss is above the stack, so this
                 * also checks that we aren't overwriting these segments.
                 *
                 * TODO: This assumes specific arrangement of sections we have
                 * in the ESP32. Rewrite this in a generic way to support other
                 * layouts.
                 */
                ESP_LOGE(TAG, "Segment %d end address 0x%08x too high (bootloader stack 0x%08x limit 0x%08x)",
                         index, load_end, sp, sp - STACK_LOAD_HEADROOM);
                return ESP_ERR_IMAGE_INVALID;
            }
        } else {
            /* Writing to IRAM */
            const intptr_t loader_iram_start = (intptr_t) &_loader_text_start;
            const intptr_t loader_iram_end = (intptr_t) &_loader_text_end;

            if (bootloader_util_regions_overlap(loader_iram_start, loader_iram_end,
                                                load_addr, load_end)) {
                ESP_LOGE(TAG, "Segment %d (0x%08x-0x%08x) overlaps bootloader IRAM (0x%08x-0x%08x)",
                         index, load_addr, load_end, loader_iram_start, loader_iram_end);
                return ESP_ERR_IMAGE_INVALID;
            }
        }
    }
#endif // BOOTLOADER_BUILD

    uint32_t free_page_count = FUNC7();
    FUNC0(TAG, "free data page_count 0x%08x", free_page_count);

    int32_t data_len_remain = data_len;
    while (data_len_remain > 0) {
        uint32_t offset_page = ((data_addr & MMAP_ALIGNED_MASK) != 0) ? 1 : 0;
        /* Data we could map in case we are not aligned to PAGE boundary is one page size lesser. */
        data_len = FUNC5(data_len_remain, ((free_page_count - offset_page) * SPI_FLASH_MMU_PAGE_SIZE));
        err = FUNC11(load_addr, data_addr, data_len, do_load, sha_handle, checksum);
        if (err != ESP_OK) {
            return err;
        }
        data_addr += data_len;
        data_len_remain -= data_len;
    }

    return ESP_OK;

err:
    if (err == ESP_OK) {
        err = ESP_ERR_IMAGE_INVALID;
    }

    return err;
}