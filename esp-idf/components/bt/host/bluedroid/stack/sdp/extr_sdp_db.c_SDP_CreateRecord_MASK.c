#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSDP_RECORD ;
struct TYPE_4__ {size_t num_records; TYPE_3__* record; } ;
typedef  TYPE_1__ tSDP_DB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_6__ {int record_handle; } ;
struct TYPE_5__ {TYPE_1__ server_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ID_SERVICE_RECORD_HDL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 size_t SDP_MAX_RECORDS ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  UINT_DESC_TYPE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ sdp_cb ; 

UINT32 FUNC5 (void)
{
#if SDP_SERVER_ENABLED == TRUE
    UINT32    handle;
    UINT8     buf[4];
    tSDP_DB  *p_db = &sdp_cb.server_db;

    /* First, check if there is a free record */
    if (p_db->num_records < SDP_MAX_RECORDS) {
        FUNC4 (&p_db->record[p_db->num_records], 0,
                sizeof (tSDP_RECORD));

        /* We will use a handle of the first unreserved handle plus last record
        ** number + 1 */
        if (p_db->num_records) {
            handle = p_db->record[p_db->num_records - 1].record_handle + 1;
        } else {
            handle = 0x10000;
        }

        p_db->record[p_db->num_records].record_handle = handle;

        p_db->num_records++;
        FUNC1("SDP_CreateRecord ok, num_records:%d\n", p_db->num_records);
        /* Add the first attribute (the handle) automatically */
        FUNC3 (buf, handle);
        FUNC0 (handle, ATTR_ID_SERVICE_RECORD_HDL, UINT_DESC_TYPE,
                          4, buf);

        return (p_db->record[p_db->num_records - 1].record_handle);
    } else {
        FUNC2("SDP_CreateRecord fail, exceed maximum records:%d\n", SDP_MAX_RECORDS);
    }
#endif
    return (0);
}