#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/ * key_ids; int /*<<< orphan*/  system_id; struct TYPE_5__* next; } ;
typedef  TYPE_1__ AVEncryptionInitInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 size_t FF_ENCRYPTION_INIT_INFO_EXTRA ; 
 TYPE_1__* FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 

AVEncryptionInitInfo *FUNC4(
    const uint8_t *side_data, size_t side_data_size)
{
    // |ret| tracks the front of the list, |info| tracks the back.
    AVEncryptionInitInfo *ret = NULL, *info, *temp_info;
    uint64_t system_id_size, num_key_ids, key_id_size, data_size, i, j;
    uint64_t init_info_count;

    if (!side_data || side_data_size < 4)
        return NULL;

    init_info_count = FUNC0(side_data);
    side_data += 4;
    side_data_size -= 4;
    for (i = 0; i < init_info_count; i++) {
        if (side_data_size < FF_ENCRYPTION_INIT_INFO_EXTRA) {
            FUNC2(ret);
            return NULL;
        }

        system_id_size = FUNC0(side_data);
        num_key_ids = FUNC0(side_data + 4);
        key_id_size = FUNC0(side_data + 8);
        data_size = FUNC0(side_data + 12);

        // UINT32_MAX + UINT32_MAX + UINT32_MAX * UINT32_MAX == UINT64_MAX
        if (side_data_size - FF_ENCRYPTION_INIT_INFO_EXTRA < system_id_size + data_size + num_key_ids * key_id_size) {
            FUNC2(ret);
            return NULL;
        }
        side_data += FF_ENCRYPTION_INIT_INFO_EXTRA;
        side_data_size -= FF_ENCRYPTION_INIT_INFO_EXTRA;

        temp_info = FUNC1(system_id_size, num_key_ids, key_id_size, data_size);
        if (!temp_info) {
            FUNC2(ret);
            return NULL;
        }
        if (i == 0) {
            info = ret = temp_info;
        } else {
            info->next = temp_info;
            info = temp_info;
        }

        FUNC3(info->system_id, side_data, system_id_size);
        side_data += system_id_size;
        side_data_size -= system_id_size;
        for (j = 0; j < num_key_ids; j++) {
            FUNC3(info->key_ids[j], side_data, key_id_size);
            side_data += key_id_size;
            side_data_size -= key_id_size;
        }
        FUNC3(info->data, side_data, data_size);
        side_data += data_size;
        side_data_size -= data_size;
    }

    return ret;
}