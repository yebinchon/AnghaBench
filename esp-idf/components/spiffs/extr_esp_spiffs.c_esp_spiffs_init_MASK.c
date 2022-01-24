#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  spiffs_fd ;
typedef  int /*<<< orphan*/  spiffs_cache_page ;
typedef  int /*<<< orphan*/  spiffs_cache ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  scalar_t__ s32_t ;
struct TYPE_19__ {int max_files; scalar_t__ format_if_mount_failed; int /*<<< orphan*/ * partition_label; } ;
typedef  TYPE_1__ esp_vfs_spiffs_conf_t ;
struct TYPE_18__ {int log_page_size; int /*<<< orphan*/  phys_size; int /*<<< orphan*/  phys_erase_block; scalar_t__ phys_addr; int /*<<< orphan*/  log_block_size; int /*<<< orphan*/  hal_write_f; int /*<<< orphan*/  hal_read_f; int /*<<< orphan*/  hal_erase_f; } ;
struct TYPE_20__ {int fds_sz; int cache_sz; struct TYPE_20__* fs; struct TYPE_20__* cache; struct TYPE_20__* fds; struct TYPE_20__* work; TYPE_11__ cfg; TYPE_3__ const* partition; void* user_data; int /*<<< orphan*/ * lock; int /*<<< orphan*/  by_label; } ;
typedef  TYPE_2__ esp_spiffs_t ;
struct TYPE_21__ {int /*<<< orphan*/  size; scalar_t__ encrypted; } ;
typedef  TYPE_3__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_partition_subtype_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_22__ {int page_size; int /*<<< orphan*/  sector_size; } ;

/* Variables and functions */
 int CONFIG_SPIFFS_PAGE_SIZE ; 
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NOT_FOUND ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_ANY ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_DATA_SPIFFS ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_DATA ; 
 scalar_t__ SPIFFS_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_11__*,TYPE_2__*,TYPE_2__*,int,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_2__** _efs ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 scalar_t__ FUNC9 (int*) ; 
 TYPE_5__ g_rom_flashchip ; 
 void* FUNC10 (int const) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  spiffs_api_check ; 
 int /*<<< orphan*/  spiffs_api_erase ; 
 int /*<<< orphan*/  spiffs_api_read ; 
 int /*<<< orphan*/  spiffs_api_write ; 
 int /*<<< orphan*/ * FUNC12 () ; 

__attribute__((used)) static esp_err_t FUNC13(const esp_vfs_spiffs_conf_t* conf)
{
    int index;
    //find if such partition is already mounted
    if (FUNC7(conf->partition_label, &index) == ESP_OK) {
        return ESP_ERR_INVALID_STATE;
    }

    if (FUNC9(&index) != ESP_OK) {
        FUNC0(TAG, "max mounted partitions reached");
        return ESP_ERR_INVALID_STATE;
    }

    uint32_t flash_page_size = g_rom_flashchip.page_size;
    uint32_t log_page_size = CONFIG_SPIFFS_PAGE_SIZE;
    if (log_page_size % flash_page_size != 0) {
        FUNC0(TAG, "SPIFFS_PAGE_SIZE is not multiple of flash chip page size (%d)",
                flash_page_size);
        return ESP_ERR_INVALID_ARG;
    }

    esp_partition_subtype_t subtype = conf->partition_label ?
            ESP_PARTITION_SUBTYPE_ANY : ESP_PARTITION_SUBTYPE_DATA_SPIFFS;
    const esp_partition_t* partition = FUNC6(ESP_PARTITION_TYPE_DATA,
                                      subtype, conf->partition_label);
    if (!partition) {
        FUNC0(TAG, "spiffs partition could not be found");
        return ESP_ERR_NOT_FOUND;
    }

    if (partition->encrypted) {
        FUNC0(TAG, "spiffs can not run on encrypted partition");
        return ESP_ERR_INVALID_STATE;
    }

    esp_spiffs_t * efs = FUNC10(sizeof(esp_spiffs_t));
    if (efs == NULL) {
        FUNC0(TAG, "esp_spiffs could not be malloced");
        return ESP_ERR_NO_MEM;
    }
    FUNC11(efs, 0, sizeof(esp_spiffs_t));

    efs->cfg.hal_erase_f       = spiffs_api_erase;
    efs->cfg.hal_read_f        = spiffs_api_read;
    efs->cfg.hal_write_f       = spiffs_api_write;
    efs->cfg.log_block_size    = g_rom_flashchip.sector_size;
    efs->cfg.log_page_size     = log_page_size;
    efs->cfg.phys_addr         = 0;
    efs->cfg.phys_erase_block  = g_rom_flashchip.sector_size;
    efs->cfg.phys_size         = partition->size;

    efs->by_label = conf->partition_label != NULL;

    efs->lock = FUNC12();
    if (efs->lock == NULL) {
        FUNC0(TAG, "mutex lock could not be created");
        FUNC8(&efs);
        return ESP_ERR_NO_MEM;
    }

    efs->fds_sz = conf->max_files * sizeof(spiffs_fd);
    efs->fds = FUNC10(efs->fds_sz);
    if (efs->fds == NULL) {
        FUNC0(TAG, "fd buffer could not be malloced");
        FUNC8(&efs);
        return ESP_ERR_NO_MEM;
    }
    FUNC11(efs->fds, 0, efs->fds_sz);

#if SPIFFS_CACHE
    efs->cache_sz = sizeof(spiffs_cache) + conf->max_files * (sizeof(spiffs_cache_page)
                          + efs->cfg.log_page_size);
    efs->cache = malloc(efs->cache_sz);
    if (efs->cache == NULL) {
        ESP_LOGE(TAG, "cache buffer could not be malloced");
        esp_spiffs_free(&efs);
        return ESP_ERR_NO_MEM;
    }
    memset(efs->cache, 0, efs->cache_sz);
#endif

    const uint32_t work_sz = efs->cfg.log_page_size * 2;
    efs->work = FUNC10(work_sz);
    if (efs->work == NULL) {
        FUNC0(TAG, "work buffer could not be malloced");
        FUNC8(&efs);
        return ESP_ERR_NO_MEM;
    }
    FUNC11(efs->work, 0, work_sz);

    efs->fs = FUNC10(sizeof(spiffs));
    if (efs->fs == NULL) {
        FUNC0(TAG, "spiffs could not be malloced");
        FUNC8(&efs);
        return ESP_ERR_NO_MEM;
    }
    FUNC11(efs->fs, 0, sizeof(spiffs));

    efs->fs->user_data = (void *)efs;
    efs->partition = partition;

    s32_t res = FUNC5(efs->fs, &efs->cfg, efs->work, efs->fds, efs->fds_sz,
                            efs->cache, efs->cache_sz, spiffs_api_check);

    if (conf->format_if_mount_failed && res != SPIFFS_OK) {
        FUNC1(TAG, "mount failed, %i. formatting...", FUNC3(efs->fs));
        FUNC2(efs->fs);
        res = FUNC4(efs->fs);
        if (res != SPIFFS_OK) {
            FUNC0(TAG, "format failed, %i", FUNC3(efs->fs));
            FUNC2(efs->fs);
            FUNC8(&efs);
            return ESP_FAIL;
        }
        res = FUNC5(efs->fs, &efs->cfg, efs->work, efs->fds, efs->fds_sz,
                            efs->cache, efs->cache_sz, spiffs_api_check);
    }
    if (res != SPIFFS_OK) {
        FUNC0(TAG, "mount failed, %i", FUNC3(efs->fs));
        FUNC2(efs->fs);
        FUNC8(&efs);
        return ESP_FAIL;
    }
    _efs[index] = efs;
    return ESP_OK;
}