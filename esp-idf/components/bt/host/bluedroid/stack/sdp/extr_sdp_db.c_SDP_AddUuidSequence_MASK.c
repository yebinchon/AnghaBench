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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  scalar_t__ UINT16 ;
typedef  int INT32 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_ELE_SEQ_DESC_TYPE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SDP_MAX_ATTR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int SIZE_TWO_BYTES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int UUID_DESC_TYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

BOOLEAN FUNC7 (UINT32 handle,  UINT16 attr_id, UINT16 num_uuids,
                             UINT16 *p_uuids)
{
#if SDP_SERVER_ENABLED == TRUE
    UINT16          xx;
    UINT8           *p_buff;
    UINT8           *p;
    INT32           max_len = SDP_MAX_ATTR_LEN - 3;
    BOOLEAN         result;

    if ((p_buff = (UINT8 *) FUNC6(sizeof(UINT8) * SDP_MAX_ATTR_LEN * 2)) == NULL) {
        FUNC1("SDP_AddUuidSequence cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff;

    /* First, build the sequence */
    for (xx = 0; xx < num_uuids ; xx++, p_uuids++) {
        FUNC4  (p, (UUID_DESC_TYPE << 3) | SIZE_TWO_BYTES);
        FUNC3 (p, *p_uuids);

        if ((p - p_buff) > max_len) {
            FUNC2 ("SDP_AddUuidSequence - too long, add %d uuids of %d\n", xx, num_uuids);
            break;
        }
    }

    result = FUNC0 (handle, attr_id, DATA_ELE_SEQ_DESC_TYPE, (UINT32) (p - p_buff), p_buff);
    FUNC5(p_buff);
    return result;
#else   /* SDP_SERVER_ENABLED == FALSE */
    return (FALSE);
#endif
}