#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ptrdiff_t ;
struct TYPE_3__ {int /*<<< orphan*/  signature; scalar_t__ version; } ;
typedef  TYPE_1__ esp_secure_boot_sig_block_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIGEST_LEN ; 
 int /*<<< orphan*/  ESP_ERR_IMAGE_INVALID ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ SIGNATURE_VERIFICATION_KEYLEN ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ signature_verification_key_end ; 
 scalar_t__ signature_verification_key_start ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC4(const esp_secure_boot_sig_block_t *sig_block, const uint8_t *image_digest)
{
    ptrdiff_t keylen;

    keylen = signature_verification_key_end - signature_verification_key_start;
    if (keylen != SIGNATURE_VERIFICATION_KEYLEN) {
        FUNC1(TAG, "Embedded public verification key has wrong length %d", keylen);
        return ESP_FAIL;
    }

    if (sig_block->version != 0) {
        FUNC1(TAG, "image has invalid signature version field 0x%08x", sig_block->version);
        return ESP_FAIL;
    }

    FUNC0(TAG, "Verifying secure boot signature");

    bool is_valid;
    is_valid = FUNC3(signature_verification_key_start,
                           image_digest,
                           DIGEST_LEN,
                           sig_block->signature,
                           FUNC2());
    FUNC0(TAG, "Verification result %d", is_valid);
    return is_valid ? ESP_OK : ESP_ERR_IMAGE_INVALID;
}