
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ ptrdiff_t ;
struct TYPE_3__ {int signature; scalar_t__ version; } ;
typedef TYPE_1__ esp_secure_boot_sig_block_t ;
typedef int esp_err_t ;


 int DIGEST_LEN ;
 int ESP_ERR_IMAGE_INVALID ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_OK ;
 scalar_t__ SIGNATURE_VERIFICATION_KEYLEN ;
 int TAG ;
 scalar_t__ signature_verification_key_end ;
 scalar_t__ signature_verification_key_start ;
 int uECC_secp256r1 () ;
 int uECC_verify (scalar_t__,int const*,int ,int ,int ) ;

esp_err_t esp_secure_boot_verify_signature_block(const esp_secure_boot_sig_block_t *sig_block, const uint8_t *image_digest)
{
    ptrdiff_t keylen;

    keylen = signature_verification_key_end - signature_verification_key_start;
    if (keylen != SIGNATURE_VERIFICATION_KEYLEN) {
        ESP_LOGE(TAG, "Embedded public verification key has wrong length %d", keylen);
        return ESP_FAIL;
    }

    if (sig_block->version != 0) {
        ESP_LOGE(TAG, "image has invalid signature version field 0x%08x", sig_block->version);
        return ESP_FAIL;
    }

    ESP_LOGD(TAG, "Verifying secure boot signature");

    bool is_valid;
    is_valid = uECC_verify(signature_verification_key_start,
                           image_digest,
                           DIGEST_LEN,
                           sig_block->signature,
                           uECC_secp256r1());
    ESP_LOGD(TAG, "Verification result %d", is_valid);
    return is_valid ? ESP_OK : ESP_ERR_IMAGE_INVALID;
}
