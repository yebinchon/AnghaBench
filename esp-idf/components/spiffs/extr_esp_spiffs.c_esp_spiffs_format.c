
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ s32_t ;
struct TYPE_5__ {int format_if_mount_failed; char const* partition_label; int max_files; } ;
typedef TYPE_1__ esp_vfs_spiffs_conf_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_6__ {int fs; int cache_sz; int cache; int fds_sz; int fds; int work; int cfg; } ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 scalar_t__ SPIFFS_OK ;
 int SPIFFS_clearerr (int ) ;
 int SPIFFS_errno (int ) ;
 scalar_t__ SPIFFS_format (int ) ;
 scalar_t__ SPIFFS_mount (int ,int *,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ SPIFFS_mounted (int ) ;
 int SPIFFS_unmount (int ) ;
 int TAG ;
 TYPE_3__** _efs ;
 int assert (int ) ;
 scalar_t__ esp_spiffs_by_label (char const*,int*) ;
 int esp_spiffs_free (TYPE_3__**) ;
 scalar_t__ esp_spiffs_init (TYPE_1__*) ;
 int spiffs_api_check ;

esp_err_t esp_spiffs_format(const char* partition_label)
{
    bool partition_was_mounted = 0;
    int index;




    esp_err_t err = esp_spiffs_by_label(partition_label, &index);
    if (err != ESP_OK) {
        esp_vfs_spiffs_conf_t conf = {
                .format_if_mount_failed = 1,
                .partition_label = partition_label,
                .max_files = 1
        };
        err = esp_spiffs_init(&conf);
        if (err != ESP_OK) {
            return err;
        }
        err = esp_spiffs_by_label(partition_label, &index);
        assert(err == ESP_OK && "failed to get index of the partition just mounted");
    } else if (SPIFFS_mounted(_efs[index]->fs)) {
        partition_was_mounted = 1;
    }

    SPIFFS_unmount(_efs[index]->fs);

    s32_t res = SPIFFS_format(_efs[index]->fs);
    if (res != SPIFFS_OK) {
        ESP_LOGE(TAG, "format failed, %i", SPIFFS_errno(_efs[index]->fs));
        SPIFFS_clearerr(_efs[index]->fs);




        if (!partition_was_mounted) {
            esp_spiffs_free(&_efs[index]);
        }
        return ESP_FAIL;
    }

    if (partition_was_mounted) {
        res = SPIFFS_mount(_efs[index]->fs, &_efs[index]->cfg, _efs[index]->work,
                            _efs[index]->fds, _efs[index]->fds_sz, _efs[index]->cache,
                            _efs[index]->cache_sz, spiffs_api_check);
        if (res != SPIFFS_OK) {
            ESP_LOGE(TAG, "mount failed, %i", SPIFFS_errno(_efs[index]->fs));
            SPIFFS_clearerr(_efs[index]->fs);
            return ESP_FAIL;
        }
    } else {
        esp_spiffs_free(&_efs[index]);
    }
    return ESP_OK;
}
