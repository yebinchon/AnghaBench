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
typedef  scalar_t__ uint8_t ;
struct AVSHA {int dummy; } ;
struct TYPE_3__ {int aax_mode; int activation_bytes_size; int audible_fixed_key_size; scalar_t__* file_key; scalar_t__* file_iv; int /*<<< orphan*/  fc; int /*<<< orphan*/  aes_decrypt; scalar_t__* audible_fixed_key; scalar_t__* activation_bytes; } ;
typedef  TYPE_1__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int DRM_BLOB_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct AVSHA*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct AVSHA* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct AVSHA*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct AVSHA*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct AVSHA*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ FUNC11 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC13(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    uint8_t intermediate_key[20];
    uint8_t intermediate_iv[20];
    uint8_t input[64];
    uint8_t output[64];
    uint8_t file_checksum[20];
    uint8_t calculated_checksum[20];
    struct AVSHA *sha;
    int i;
    int ret = 0;
    uint8_t *activation_bytes = c->activation_bytes;
    uint8_t *fixed_key = c->audible_fixed_key;

    c->aax_mode = 1;

    sha = FUNC6();
    if (!sha)
        return FUNC0(ENOMEM);
    c->aes_decrypt = FUNC1();
    if (!c->aes_decrypt) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    /* drm blob processing */
    FUNC10(pb, output, 8); // go to offset 8, absolute position 0x251
    FUNC10(pb, input, DRM_BLOB_SIZE);
    FUNC10(pb, output, 4); // go to offset 4, absolute position 0x28d
    FUNC10(pb, file_checksum, 20);

    FUNC5(c->fc, AV_LOG_INFO, "[aax] file checksum == "); // required by external tools
    for (i = 0; i < 20; i++)
        FUNC5(c->fc, AV_LOG_INFO, "%02x", file_checksum[i]);
    FUNC5(c->fc, AV_LOG_INFO, "\n");

    /* verify activation data */
    if (!activation_bytes) {
        FUNC5(c->fc, AV_LOG_WARNING, "[aax] activation_bytes option is missing!\n");
        ret = 0;  /* allow ffprobe to continue working on .aax files */
        goto fail;
    }
    if (c->activation_bytes_size != 4) {
        FUNC5(c->fc, AV_LOG_FATAL, "[aax] activation_bytes value needs to be 4 bytes!\n");
        ret = FUNC0(EINVAL);
        goto fail;
    }

    /* verify fixed key */
    if (c->audible_fixed_key_size != 16) {
        FUNC5(c->fc, AV_LOG_FATAL, "[aax] audible_fixed_key value needs to be 16 bytes!\n");
        ret = FUNC0(EINVAL);
        goto fail;
    }

    /* AAX (and AAX+) key derivation */
    FUNC8(sha, 160);
    FUNC9(sha, fixed_key, 16);
    FUNC9(sha, activation_bytes, 4);
    FUNC7(sha, intermediate_key);
    FUNC8(sha, 160);
    FUNC9(sha, fixed_key, 16);
    FUNC9(sha, intermediate_key, 20);
    FUNC9(sha, activation_bytes, 4);
    FUNC7(sha, intermediate_iv);
    FUNC8(sha, 160);
    FUNC9(sha, intermediate_key, 16);
    FUNC9(sha, intermediate_iv, 16);
    FUNC7(sha, calculated_checksum);
    if (FUNC11(calculated_checksum, file_checksum, 20)) { // critical error
        FUNC5(c->fc, AV_LOG_ERROR, "[aax] mismatch in checksums!\n");
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }
    FUNC3(c->aes_decrypt, intermediate_key, 128, 1);
    FUNC2(c->aes_decrypt, output, input, DRM_BLOB_SIZE >> 4, intermediate_iv, 1);
    for (i = 0; i < 4; i++) {
        // file data (in output) is stored in big-endian mode
        if (activation_bytes[i] != output[3 - i]) { // critical error
            FUNC5(c->fc, AV_LOG_ERROR, "[aax] error in drm blob decryption!\n");
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
    }
    FUNC12(c->file_key, output + 8, 16);
    FUNC12(input, output + 26, 16);
    FUNC8(sha, 160);
    FUNC9(sha, input, 16);
    FUNC9(sha, c->file_key, 16);
    FUNC9(sha, fixed_key, 16);
    FUNC7(sha, c->file_iv);

fail:
    FUNC4(sha);

    return ret;
}