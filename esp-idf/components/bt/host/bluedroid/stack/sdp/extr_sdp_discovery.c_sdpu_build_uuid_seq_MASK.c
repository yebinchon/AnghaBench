#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  uuid128; int /*<<< orphan*/  uuid32; int /*<<< orphan*/  uuid16; } ;
struct TYPE_5__ {int len; TYPE_1__ uu; } ;
typedef  TYPE_2__ tSDP_UUID ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int DATA_ELE_SEQ_DESC_TYPE ; 
 int SIZE_FOUR_BYTES ; 
 int SIZE_IN_NEXT_BYTE ; 
 int SIZE_SIXTEEN_BYTES ; 
 int SIZE_TWO_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int UUID_DESC_TYPE ; 

__attribute__((used)) static UINT8 *FUNC4 (UINT8 *p_out, UINT16 num_uuids, tSDP_UUID *p_uuid_list)
{
    UINT16  xx;
    UINT8   *p_len;

    /* First thing is the data element header */
    FUNC3  (p_out, (DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_BYTE);

    /* Remember where the length goes. Leave space for it. */
    p_len = p_out;
    p_out += 1;

    /* Now, loop through and put in all the UUID(s) */
    for (xx = 0; xx < num_uuids; xx++, p_uuid_list++) {
        if (p_uuid_list->len == 2) {
            FUNC3  (p_out, (UUID_DESC_TYPE << 3) | SIZE_TWO_BYTES);
            FUNC1 (p_out, p_uuid_list->uu.uuid16);
        } else if (p_uuid_list->len == 4) {
            FUNC3  (p_out, (UUID_DESC_TYPE << 3) | SIZE_FOUR_BYTES);
            FUNC2 (p_out, p_uuid_list->uu.uuid32);
        } else {
            FUNC3 (p_out, (UUID_DESC_TYPE << 3) | SIZE_SIXTEEN_BYTES);
            FUNC0 (p_out, p_uuid_list->uu.uuid128, p_uuid_list->len);
        }
    }

    /* Now, put in the length */
    xx = (UINT16)(p_out - p_len - 1);
    FUNC3 (p_len, xx);

    return (p_out);
}