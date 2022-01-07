
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_5__ {int key_id_size; int iv_size; int subsample_count; int scheme; int crypt_byte_block; int skip_byte_block; TYPE_1__* subsamples; int iv; int key_id; } ;
struct TYPE_4__ {int bytes_of_clear_data; int bytes_of_protected_data; } ;
typedef TYPE_2__ AVEncryptionInfo ;


 int AV_WB32 (int *,int) ;
 int FF_ENCRYPTION_INFO_EXTRA ;
 int UINT32_MAX ;
 int * av_malloc (size_t) ;
 int memcpy (int *,int ,int) ;

uint8_t *av_encryption_info_add_side_data(const AVEncryptionInfo *info, size_t *size)
{
    uint8_t *buffer, *cur_buffer;
    uint32_t i;

    if (UINT32_MAX - FF_ENCRYPTION_INFO_EXTRA < info->key_id_size ||
        UINT32_MAX - FF_ENCRYPTION_INFO_EXTRA - info->key_id_size < info->iv_size ||
        (UINT32_MAX - FF_ENCRYPTION_INFO_EXTRA - info->key_id_size - info->iv_size) / 8 < info->subsample_count) {
        return ((void*)0);
    }

    *size = FF_ENCRYPTION_INFO_EXTRA + info->key_id_size + info->iv_size +
            (info->subsample_count * 8);
    cur_buffer = buffer = av_malloc(*size);
    if (!buffer)
        return ((void*)0);

    AV_WB32(cur_buffer, info->scheme);
    AV_WB32(cur_buffer + 4, info->crypt_byte_block);
    AV_WB32(cur_buffer + 8, info->skip_byte_block);
    AV_WB32(cur_buffer + 12, info->key_id_size);
    AV_WB32(cur_buffer + 16, info->iv_size);
    AV_WB32(cur_buffer + 20, info->subsample_count);
    cur_buffer += 24;
    memcpy(cur_buffer, info->key_id, info->key_id_size);
    cur_buffer += info->key_id_size;
    memcpy(cur_buffer, info->iv, info->iv_size);
    cur_buffer += info->iv_size;
    for (i = 0; i < info->subsample_count; i++) {
        AV_WB32(cur_buffer, info->subsamples[i].bytes_of_clear_data);
        AV_WB32(cur_buffer + 4, info->subsamples[i].bytes_of_protected_data);
        cur_buffer += 8;
    }

    return buffer;
}
