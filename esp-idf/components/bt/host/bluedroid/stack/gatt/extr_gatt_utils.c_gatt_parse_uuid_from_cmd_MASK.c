#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  uuid128; int /*<<< orphan*/  uuid32; int /*<<< orphan*/  uuid16; } ;
struct TYPE_6__ {int len; TYPE_1__ uu; } ;
typedef  TYPE_2__ tBT_UUID ;
typedef  size_t UINT8 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  LEN_UUID_128 130 
#define  LEN_UUID_16 129 
#define  LEN_UUID_32 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t* base_uuid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t*,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

BOOLEAN FUNC6(tBT_UUID *p_uuid_rec, UINT16 uuid_size, UINT8 **p_data)
{
    BOOLEAN is_base_uuid, ret = TRUE;
    UINT8  xx;
    UINT8 *p_uuid = *p_data;

    FUNC5(p_uuid_rec, 0, sizeof(tBT_UUID));

    switch (uuid_size) {
    case LEN_UUID_16:
        p_uuid_rec->len = uuid_size;
        FUNC2 (p_uuid_rec->uu.uuid16, p_uuid);
        *p_data += LEN_UUID_16;
        break;

    case LEN_UUID_128:
        /* See if we can compress his UUID down to 16 or 32bit UUIDs */
        is_base_uuid = TRUE;
        for (xx = 0; xx < LEN_UUID_128 - 4; xx++) {
            if (p_uuid[xx] != base_uuid[xx]) {
                is_base_uuid = FALSE;
                break;
            }
        }
        if (is_base_uuid) {
            if ((p_uuid[LEN_UUID_128 - 1] == 0) && (p_uuid[LEN_UUID_128 - 2] == 0)) {
                p_uuid += (LEN_UUID_128 - 4);
                p_uuid_rec->len = LEN_UUID_16;
                FUNC2(p_uuid_rec->uu.uuid16, p_uuid);
            } else {
                p_uuid += (LEN_UUID_128 - LEN_UUID_32);
                p_uuid_rec->len = LEN_UUID_32;
                FUNC3(p_uuid_rec->uu.uuid32, p_uuid);
            }
        }
        if (!is_base_uuid) {
            p_uuid_rec->len = LEN_UUID_128;
            FUNC4(p_uuid_rec->uu.uuid128, p_uuid, LEN_UUID_128);
        }
        *p_data += LEN_UUID_128;
        break;

    /* do not allow 32 bits UUID in ATT PDU now */
    case LEN_UUID_32:
        FUNC0("DO NOT ALLOW 32 BITS UUID IN ATT PDU");
    case 0:
    default:
        if (uuid_size != 0) {
            ret = FALSE;
        }
        FUNC1("gatt_parse_uuid_from_cmd invalid uuid size");
        break;
    }

    return ( ret);
}