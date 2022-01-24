#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {scalar_t__ total_in; scalar_t__ total_out; int initialized; char* password; int encryption_mode; int mode; TYPE_1__ stream; int /*<<< orphan*/  hmac; int /*<<< orphan*/  aes; int /*<<< orphan*/  nonce; int /*<<< orphan*/  crypt_pos; } ;
typedef  TYPE_2__ mz_stream_wzaes ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  MZ_AES_KEYING_ITERATIONS ; 
 scalar_t__ FUNC0 (int) ; 
 int MZ_AES_KEY_LENGTH_MAX ; 
 scalar_t__ MZ_AES_PW_LENGTH_MAX ; 
 int MZ_AES_PW_VERIFY_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int MZ_AES_SALT_LENGTH_MAX ; 
 int /*<<< orphan*/  MZ_HASH_SHA1 ; 
 scalar_t__ MZ_OK ; 
 int MZ_OPEN_ERROR ; 
 int MZ_OPEN_MODE_READ ; 
 int MZ_OPEN_MODE_WRITE ; 
 int MZ_PARAM_ERROR ; 
 int MZ_PASSWORD_ERROR ; 
 int MZ_READ_ERROR ; 
 int MZ_SUPPORT_ERROR ; 
 int MZ_WRITE_ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (char const*) ; 

int32_t FUNC17(void *stream, const char *path, int32_t mode)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    uint16_t salt_length = 0;
    uint16_t password_length = 0;
    uint16_t key_length = 0;
    uint8_t kbuf[2 * MZ_AES_KEY_LENGTH_MAX + MZ_AES_PW_VERIFY_SIZE];
    uint8_t verify[MZ_AES_PW_VERIFY_SIZE];
    uint8_t verify_expected[MZ_AES_PW_VERIFY_SIZE];
    uint8_t salt_value[MZ_AES_SALT_LENGTH_MAX];
    const char *password = path;

    wzaes->total_in = 0;
    wzaes->total_out = 0;
    wzaes->initialized = 0;

    if (FUNC13(wzaes->stream.base) != MZ_OK)
        return MZ_OPEN_ERROR;

    if (password == NULL)
        password = wzaes->password;
    if (password == NULL)
        return MZ_PARAM_ERROR;
    password_length = (uint16_t)FUNC16(password);
    if (password_length > MZ_AES_PW_LENGTH_MAX)
        return MZ_PARAM_ERROR;

    if (wzaes->encryption_mode < 1 || wzaes->encryption_mode > 3)
        return MZ_PARAM_ERROR;

    salt_length = FUNC1(wzaes->encryption_mode);

    if (mode & MZ_OPEN_MODE_WRITE)
    {
#ifdef MZ_ZIP_NO_COMPRESSION
        return MZ_SUPPORT_ERROR;
#else
        FUNC12(salt_value, salt_length);
#endif
    }
    else if (mode & MZ_OPEN_MODE_READ)
    {
#ifdef MZ_ZIP_NO_DECOMPRESSION
        return MZ_SUPPORT_ERROR;
#else
        if (FUNC14(wzaes->stream.base, salt_value, salt_length) != salt_length)
            return MZ_READ_ERROR;
#endif
    }

    key_length = FUNC0(wzaes->encryption_mode);

    /* Derive the encryption and authentication keys and the password verifier */
    FUNC11((uint8_t *)password, password_length, salt_value, salt_length,
        MZ_AES_KEYING_ITERATIONS, kbuf, 2 * key_length + MZ_AES_PW_VERIFY_SIZE);

    /* Initialize the encryption nonce and buffer pos */
    wzaes->crypt_pos = MZ_AES_BLOCK_SIZE;
    FUNC4(wzaes->nonce, 0, sizeof(wzaes->nonce));

    /* Initialize for encryption using key 1 */
    FUNC5(wzaes->aes);
    FUNC7(wzaes->aes, wzaes->encryption_mode);
    FUNC6(wzaes->aes, kbuf, key_length);

    /* Initialize for authentication using key 2 */
    FUNC9(wzaes->hmac);
    FUNC10(wzaes->hmac, MZ_HASH_SHA1);
    FUNC8(wzaes->hmac, kbuf + key_length, key_length);

    FUNC3(verify, kbuf + (2 * key_length), MZ_AES_PW_VERIFY_SIZE);

    if (mode & MZ_OPEN_MODE_WRITE)
    {
        if (FUNC15(wzaes->stream.base, salt_value, salt_length) != salt_length)
            return MZ_WRITE_ERROR;

        wzaes->total_out += salt_length;

        if (FUNC15(wzaes->stream.base, verify, MZ_AES_PW_VERIFY_SIZE) != MZ_AES_PW_VERIFY_SIZE)
            return MZ_WRITE_ERROR;

        wzaes->total_out += MZ_AES_PW_VERIFY_SIZE;
    }
    else if (mode & MZ_OPEN_MODE_READ)
    {
        wzaes->total_in += salt_length;

        if (FUNC14(wzaes->stream.base, verify_expected, MZ_AES_PW_VERIFY_SIZE) != MZ_AES_PW_VERIFY_SIZE)
            return MZ_READ_ERROR;

        wzaes->total_in += MZ_AES_PW_VERIFY_SIZE;

        if (FUNC2(verify_expected, verify, MZ_AES_PW_VERIFY_SIZE) != 0)
            return MZ_PASSWORD_ERROR;
    }

    wzaes->mode = mode;
    wzaes->initialized = 1;

    return MZ_OK;
}