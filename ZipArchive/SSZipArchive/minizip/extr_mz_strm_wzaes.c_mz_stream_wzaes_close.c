
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {int mode; scalar_t__ initialized; int total_in; TYPE_1__ stream; int total_out; int hmac; } ;
typedef TYPE_2__ mz_stream_wzaes ;
typedef int int32_t ;
typedef int computed_hash ;


 int MZ_AES_AUTHCODE_SIZE ;
 int MZ_CRC_ERROR ;
 int MZ_HASH_SHA1_SIZE ;
 int MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 int MZ_OPEN_MODE_WRITE ;
 int MZ_READ_ERROR ;
 int MZ_WRITE_ERROR ;
 scalar_t__ memcmp (int *,int *,int) ;
 int mz_crypt_hmac_end (int ,int *,int) ;
 int mz_stream_read (int ,int *,int) ;
 int mz_stream_write (int ,int *,int) ;

int32_t mz_stream_wzaes_close(void *stream)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    uint8_t expected_hash[MZ_AES_AUTHCODE_SIZE];
    uint8_t computed_hash[MZ_HASH_SHA1_SIZE];

    mz_crypt_hmac_end(wzaes->hmac, computed_hash, sizeof(computed_hash));

    if (wzaes->mode & MZ_OPEN_MODE_WRITE)
    {
        if (mz_stream_write(wzaes->stream.base, computed_hash, MZ_AES_AUTHCODE_SIZE) != MZ_AES_AUTHCODE_SIZE)
            return MZ_WRITE_ERROR;

        wzaes->total_out += MZ_AES_AUTHCODE_SIZE;
    }
    else if (wzaes->mode & MZ_OPEN_MODE_READ)
    {
        if (mz_stream_read(wzaes->stream.base, expected_hash, MZ_AES_AUTHCODE_SIZE) != MZ_AES_AUTHCODE_SIZE)
            return MZ_READ_ERROR;

        wzaes->total_in += MZ_AES_AUTHCODE_SIZE;


        if (memcmp(computed_hash, expected_hash, MZ_AES_AUTHCODE_SIZE) != 0)
            return MZ_CRC_ERROR;
    }

    wzaes->initialized = 0;
    return MZ_OK;
}
