
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ets_secure_boot_sig_block {int dummy; } ;
typedef int ets_secure_boot_signature_t ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ ets_secure_boot_key_digests_t ;
typedef int esp_err_t ;
typedef int bootloader_sha256_handle_t ;


 int DIGEST_LEN ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,int,int) ;
 int ESP_LOGE (int ,char*,int,int) ;
 int ESP_OK ;
 int ETS_OK ;
 int SHA2_256 ;
 int TAG ;
 int * bootloader_mmap (int,int) ;
 int bootloader_munmap (int const*) ;
 int bootloader_sha256_data (int ,int const*,int) ;
 int bootloader_sha256_finish (int ,int *) ;
 int bootloader_sha256_start () ;
 int esp_sha (int ,int const*,int,int *) ;
 int ets_secure_boot_read_key_digests (TYPE_1__*) ;
 int ets_secure_boot_verify_signature (int const*,int *,TYPE_1__*) ;

esp_err_t esp_secure_boot_verify_signature(uint32_t src_addr, uint32_t length)
{
    ets_secure_boot_key_digests_t trusted_keys = { 0 };
    uint8_t digest[DIGEST_LEN];
    const uint8_t *data;

    ESP_LOGD(TAG, "verifying signature src_addr 0x%x length 0x%x", src_addr, length);

    if ((src_addr + length) % 4096 != 0) {
        ESP_LOGE(TAG, "addr 0x%x length 0x%x doesn't end on a sector boundary", src_addr, length);
        return ESP_ERR_INVALID_ARG;
    }

    data = bootloader_mmap(src_addr, length + sizeof(struct ets_secure_boot_sig_block));
    if(data == ((void*)0)) {
        ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", src_addr, length+sizeof(ets_secure_boot_signature_t));
        return ESP_FAIL;
    }
    esp_sha(SHA2_256, data, length, digest);


    int r = ets_secure_boot_read_key_digests(&trusted_keys);

    if (r == ETS_OK) {
        const ets_secure_boot_signature_t *sig = (const ets_secure_boot_signature_t *)(data + length);

        r = ets_secure_boot_verify_signature(sig, digest, &trusted_keys);
    }
    bootloader_munmap(data);

    return (r == ETS_OK) ? ESP_OK : ESP_FAIL;
}
