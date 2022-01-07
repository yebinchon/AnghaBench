
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encryption_mode; scalar_t__ max_total_in; scalar_t__ total_out; scalar_t__ total_in; } ;
typedef TYPE_1__ mz_stream_wzaes ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 scalar_t__ MZ_AES_AUTHCODE_SIZE ;
 scalar_t__ MZ_AES_PW_VERIFY_SIZE ;
 scalar_t__ MZ_AES_SALT_LENGTH (scalar_t__) ;
 int MZ_EXIST_ERROR ;
 int MZ_OK ;






int32_t mz_stream_wzaes_get_prop_int64(void *stream, int32_t prop, int64_t *value)
{
    mz_stream_wzaes *wzaes = (mz_stream_wzaes *)stream;
    switch (prop)
    {
    case 130:
        *value = wzaes->total_in;
        break;
    case 128:
        *value = wzaes->total_out;
        break;
    case 129:
        *value = wzaes->max_total_in;
        break;
    case 131:
        *value = MZ_AES_SALT_LENGTH((int64_t)wzaes->encryption_mode) + MZ_AES_PW_VERIFY_SIZE;
        break;
    case 132:
        *value = MZ_AES_AUTHCODE_SIZE;
        break;
    default:
        return MZ_EXIST_ERROR;
    }
    return MZ_OK;
}
