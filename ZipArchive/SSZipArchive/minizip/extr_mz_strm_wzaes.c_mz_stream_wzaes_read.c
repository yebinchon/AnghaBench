
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {scalar_t__ max_total_in; scalar_t__ total_in; int hmac; TYPE_1__ stream; } ;
typedef TYPE_2__ mz_stream_wzaes ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_AES_FOOTER_SIZE ;
 int mz_crypt_hmac_update (int ,int *,scalar_t__) ;
 scalar_t__ mz_stream_read (int ,void*,scalar_t__) ;
 int mz_stream_wzaes_ctr_encrypt (void*,int *,scalar_t__) ;

int32_t mz_stream_wzaes_read(void *stream, void *buf, int32_t size)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    int64_t max_total_in = 0;
    int32_t bytes_to_read = size;
    int32_t read = 0;

    max_total_in = wzaes->max_total_in - MZ_AES_FOOTER_SIZE;
    if ((int64_t)bytes_to_read > (max_total_in - wzaes->total_in))
        bytes_to_read = (int32_t)(max_total_in - wzaes->total_in);

    read = mz_stream_read(wzaes->stream.base, buf, bytes_to_read);

    if (read > 0)
    {
        mz_crypt_hmac_update(wzaes->hmac, (uint8_t *)buf, read);
        mz_stream_wzaes_ctr_encrypt(stream, (uint8_t *)buf, read);

        wzaes->total_in += read;
    }

    return read;
}
