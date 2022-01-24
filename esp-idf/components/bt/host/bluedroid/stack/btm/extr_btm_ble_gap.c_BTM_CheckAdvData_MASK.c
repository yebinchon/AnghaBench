#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT8 ;

/* Variables and functions */
 int BTM_BLE_CACHE_ADV_DATA_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 

UINT8 *FUNC2( UINT8 *p_adv, UINT8 type, UINT8 *p_length)
{
    UINT8 *p = p_adv;
    UINT8 length;
    UINT8 adv_type;
    FUNC0("BTM_CheckAdvData type=0x%02X", type);

    FUNC1(length, p);

    while ( length && (p - p_adv <= BTM_BLE_CACHE_ADV_DATA_MAX)) {
        FUNC1(adv_type, p);

        if ( adv_type == type ) {
            /* length doesn't include itself */
            *p_length = length - 1; /* minus the length of type */
            return p;
        }
        p += length - 1; /* skip the length of data */
        FUNC1(length, p);
    }

    *p_length = 0;
    return NULL;
}