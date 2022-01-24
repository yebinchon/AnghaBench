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
typedef  int /*<<< orphan*/  tSDP_PROTOCOL_ELEM ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ID_PROTOCOL_DESC_LIST ; 
 int /*<<< orphan*/  DATA_ELE_SEQ_DESC_TYPE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SDP_MAX_ATTR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOLEAN FUNC5 (UINT32 handle, UINT16 num_elem,
                             tSDP_PROTOCOL_ELEM *p_elem_list)
{
#if SDP_SERVER_ENABLED == TRUE
    UINT8           *p_buff;
    int             offset;
    BOOLEAN         result;

    if ((p_buff = (UINT8 *) FUNC3(sizeof(UINT8) * SDP_MAX_ATTR_LEN * 2)) == NULL) {
        FUNC1("SDP_AddProtocolList cannot get a buffer!\n");
        return (FALSE);
    }

    offset = FUNC4(p_buff, num_elem, p_elem_list);
    result = FUNC0 (handle, ATTR_ID_PROTOCOL_DESC_LIST, DATA_ELE_SEQ_DESC_TYPE, (UINT32) offset, p_buff);
    FUNC2(p_buff);
    return result;
#else   /* SDP_SERVER_ENABLED == FALSE */
    return (FALSE);
#endif
}