#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  eir_uuid; int /*<<< orphan*/  eir_complete_list; } ;
typedef  TYPE_1__ tBTM_INQ_RESULTS ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ BTM_EIR_COMPLETE_16BITS_UUID_TYPE ; 
 scalar_t__ BTM_EIR_MORE_16BITS_UUID_TYPE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LEN_UUID_128 ; 
 int /*<<< orphan*/  LEN_UUID_16 ; 
 int /*<<< orphan*/  LEN_UUID_32 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

void FUNC5( UINT8 *p_eir, tBTM_INQ_RESULTS *p_results )
{
    UINT8   *p_uuid_data;
    UINT8   num_uuid;
    UINT16  uuid16;
    UINT8   yy;
    UINT8   type = BTM_EIR_MORE_16BITS_UUID_TYPE;

    p_uuid_data = FUNC4( p_eir, LEN_UUID_16, &num_uuid, &type );

    if (type == BTM_EIR_COMPLETE_16BITS_UUID_TYPE) {
        p_results->eir_complete_list = TRUE;
    } else {
        p_results->eir_complete_list = FALSE;
    }

    FUNC1("btm_set_eir_uuid eir_complete_list=0x%02X\n", p_results->eir_complete_list);

    if ( p_uuid_data ) {
        for ( yy = 0; yy < num_uuid; yy++ ) {
            FUNC2(uuid16, p_uuid_data);
            FUNC0( p_results->eir_uuid, uuid16 );
        }
    }

    p_uuid_data = FUNC4( p_eir, LEN_UUID_32, &num_uuid, &type );
    if ( p_uuid_data ) {
        for ( yy = 0; yy < num_uuid; yy++ ) {
            uuid16 = FUNC3( p_uuid_data, LEN_UUID_32 );
            p_uuid_data += LEN_UUID_32;
            if ( uuid16 ) {
                FUNC0( p_results->eir_uuid, uuid16 );
            }
        }
    }

    p_uuid_data = FUNC4( p_eir, LEN_UUID_128, &num_uuid, &type );
    if ( p_uuid_data ) {
        for ( yy = 0; yy < num_uuid; yy++ ) {
            uuid16 = FUNC3( p_uuid_data, LEN_UUID_128 );
            p_uuid_data += LEN_UUID_128;
            if ( uuid16 ) {
                FUNC0( p_results->eir_uuid, uuid16 );
            }
        }
    }
}