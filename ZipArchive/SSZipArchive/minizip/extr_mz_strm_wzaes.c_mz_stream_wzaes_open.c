
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {scalar_t__ total_in; scalar_t__ total_out; int initialized; char* password; int encryption_mode; int mode; TYPE_1__ stream; int hmac; int aes; int nonce; int crypt_pos; } ;
typedef TYPE_2__ mz_stream_wzaes ;
typedef int int32_t ;


 int MZ_AES_BLOCK_SIZE ;
 int MZ_AES_KEYING_ITERATIONS ;
 scalar_t__ MZ_AES_KEY_LENGTH (int) ;
 int MZ_AES_KEY_LENGTH_MAX ;
 scalar_t__ MZ_AES_PW_LENGTH_MAX ;
 int MZ_AES_PW_VERIFY_SIZE ;
 scalar_t__ MZ_AES_SALT_LENGTH (int) ;
 int MZ_AES_SALT_LENGTH_MAX ;
 int MZ_HASH_SHA1 ;
 scalar_t__ MZ_OK ;
 int MZ_OPEN_ERROR ;
 int MZ_OPEN_MODE_READ ;
 int MZ_OPEN_MODE_WRITE ;
 int MZ_PARAM_ERROR ;
 int MZ_PASSWORD_ERROR ;
 int MZ_READ_ERROR ;
 int MZ_SUPPORT_ERROR ;
 int MZ_WRITE_ERROR ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,int ,int) ;
 int mz_crypt_aes_reset (int ) ;
 int mz_crypt_aes_set_encrypt_key (int ,int *,scalar_t__) ;
 int mz_crypt_aes_set_mode (int ,int) ;
 int mz_crypt_hmac_init (int ,int *,scalar_t__) ;
 int mz_crypt_hmac_reset (int ) ;
 int mz_crypt_hmac_set_algorithm (int ,int ) ;
 int mz_crypt_pbkdf2 (int *,scalar_t__,int *,scalar_t__,int ,int *,int) ;
 int mz_crypt_rand (int *,scalar_t__) ;
 scalar_t__ mz_stream_is_open (int ) ;
 int mz_stream_read (int ,int *,int) ;
 int mz_stream_write (int ,int *,int) ;
 scalar_t__ strlen (char const*) ;

int32_t mz_stream_wzaes_open(void *stream, const char *path, int32_t mode)
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

    if (mz_stream_is_open(wzaes->stream.base) != MZ_OK)
        return MZ_OPEN_ERROR;

    if (password == ((void*)0))
        password = wzaes->password;
    if (password == ((void*)0))
        return MZ_PARAM_ERROR;
    password_length = (uint16_t)strlen(password);
    if (password_length > MZ_AES_PW_LENGTH_MAX)
        return MZ_PARAM_ERROR;

    if (wzaes->encryption_mode < 1 || wzaes->encryption_mode > 3)
        return MZ_PARAM_ERROR;

    salt_length = MZ_AES_SALT_LENGTH(wzaes->encryption_mode);

    if (mode & MZ_OPEN_MODE_WRITE)
    {



        mz_crypt_rand(salt_value, salt_length);

    }
    else if (mode & MZ_OPEN_MODE_READ)
    {



        if (mz_stream_read(wzaes->stream.base, salt_value, salt_length) != salt_length)
            return MZ_READ_ERROR;

    }

    key_length = MZ_AES_KEY_LENGTH(wzaes->encryption_mode);


    mz_crypt_pbkdf2((uint8_t *)password, password_length, salt_value, salt_length,
        MZ_AES_KEYING_ITERATIONS, kbuf, 2 * key_length + MZ_AES_PW_VERIFY_SIZE);


    wzaes->crypt_pos = MZ_AES_BLOCK_SIZE;
    memset(wzaes->nonce, 0, sizeof(wzaes->nonce));


    mz_crypt_aes_reset(wzaes->aes);
    mz_crypt_aes_set_mode(wzaes->aes, wzaes->encryption_mode);
    mz_crypt_aes_set_encrypt_key(wzaes->aes, kbuf, key_length);


    mz_crypt_hmac_reset(wzaes->hmac);
    mz_crypt_hmac_set_algorithm(wzaes->hmac, MZ_HASH_SHA1);
    mz_crypt_hmac_init(wzaes->hmac, kbuf + key_length, key_length);

    memcpy(verify, kbuf + (2 * key_length), MZ_AES_PW_VERIFY_SIZE);

    if (mode & MZ_OPEN_MODE_WRITE)
    {
        if (mz_stream_write(wzaes->stream.base, salt_value, salt_length) != salt_length)
            return MZ_WRITE_ERROR;

        wzaes->total_out += salt_length;

        if (mz_stream_write(wzaes->stream.base, verify, MZ_AES_PW_VERIFY_SIZE) != MZ_AES_PW_VERIFY_SIZE)
            return MZ_WRITE_ERROR;

        wzaes->total_out += MZ_AES_PW_VERIFY_SIZE;
    }
    else if (mode & MZ_OPEN_MODE_READ)
    {
        wzaes->total_in += salt_length;

        if (mz_stream_read(wzaes->stream.base, verify_expected, MZ_AES_PW_VERIFY_SIZE) != MZ_AES_PW_VERIFY_SIZE)
            return MZ_READ_ERROR;

        wzaes->total_in += MZ_AES_PW_VERIFY_SIZE;

        if (memcmp(verify_expected, verify, MZ_AES_PW_VERIFY_SIZE) != 0)
            return MZ_PASSWORD_ERROR;
    }

    wzaes->mode = mode;
    wzaes->initialized = 1;

    return MZ_OK;
}
