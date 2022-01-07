
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {size_t system_id_size; size_t data_size; size_t num_key_ids; size_t key_id_size; int data; int * key_ids; int system_id; struct TYPE_3__* next; } ;
typedef TYPE_1__ AVEncryptionInitInfo ;


 int AV_WB32 (int *,size_t) ;
 scalar_t__ FF_ENCRYPTION_INIT_INFO_EXTRA ;
 size_t UINT32_MAX ;
 int * av_malloc (size_t) ;
 int memcpy (int *,int ,size_t) ;

uint8_t *av_encryption_init_info_add_side_data(const AVEncryptionInitInfo *info, size_t *side_data_size)
{
    const AVEncryptionInitInfo *cur_info;
    uint8_t *buffer, *cur_buffer;
    uint32_t i, init_info_count;
    uint64_t temp_side_data_size;

    temp_side_data_size = 4;
    init_info_count = 0;
    for (cur_info = info; cur_info; cur_info = cur_info->next) {
        temp_side_data_size += (uint64_t)FF_ENCRYPTION_INIT_INFO_EXTRA + cur_info->system_id_size + cur_info->data_size;
        if (init_info_count == UINT32_MAX || temp_side_data_size > UINT32_MAX) {
            return ((void*)0);
        }
        init_info_count++;

        if (cur_info->num_key_ids) {
            temp_side_data_size += (uint64_t)cur_info->num_key_ids * cur_info->key_id_size;
            if (temp_side_data_size > UINT32_MAX) {
                return ((void*)0);
            }
        }
    }
    *side_data_size = temp_side_data_size;

    cur_buffer = buffer = av_malloc(*side_data_size);
    if (!buffer)
        return ((void*)0);

    AV_WB32(cur_buffer, init_info_count);
    cur_buffer += 4;
    for (cur_info = info; cur_info; cur_info = cur_info->next) {
        AV_WB32(cur_buffer, cur_info->system_id_size);
        AV_WB32(cur_buffer + 4, cur_info->num_key_ids);
        AV_WB32(cur_buffer + 8, cur_info->key_id_size);
        AV_WB32(cur_buffer + 12, cur_info->data_size);
        cur_buffer += 16;

        memcpy(cur_buffer, cur_info->system_id, cur_info->system_id_size);
        cur_buffer += cur_info->system_id_size;
        for (i = 0; i < cur_info->num_key_ids; i++) {
            memcpy(cur_buffer, cur_info->key_ids[i], cur_info->key_id_size);
            cur_buffer += cur_info->key_id_size;
        }
        if (cur_info->data_size > 0) {
            memcpy(cur_buffer, cur_info->data, cur_info->data_size);
            cur_buffer += cur_info->data_size;
        }
    }

    return buffer;
}
