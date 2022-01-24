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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ID_BT_PROFILE_DESC_LIST ; 
 int DATA_ELE_SEQ_DESC_TYPE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int SDP_MAX_ATTR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SIZE_IN_NEXT_BYTE ; 
 int SIZE_TWO_BYTES ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int UINT_DESC_TYPE ; 
 int UUID_DESC_TYPE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (int) ; 

BOOLEAN FUNC6 (UINT32 handle, UINT16 profile_uuid,
                                      UINT16 version)
{
#if SDP_SERVER_ENABLED == TRUE
    UINT8           *p_buff;
    UINT8           *p;
    BOOLEAN        result;

    if ((p_buff = (UINT8 *) FUNC5(sizeof(UINT8) * SDP_MAX_ATTR_LEN)) == NULL) {
        FUNC1("SDP_AddProfileDescriptorList cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff + 2;

    /* First, build the profile descriptor list. This consists of a data element sequence. */
    /* The sequence consists of profile's UUID and version number  */
    FUNC3  (p, (UUID_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    FUNC2 (p, profile_uuid);

    FUNC3  (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    FUNC2 (p, version);

    /* Add in type and length fields */
    *p_buff = (UINT8) ((DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_BYTE);
    *(p_buff + 1) = (UINT8) (p - (p_buff + 2));

    result = FUNC0 (handle, ATTR_ID_BT_PROFILE_DESC_LIST, DATA_ELE_SEQ_DESC_TYPE, (UINT32) (p - p_buff), p_buff);
    FUNC4(p_buff);
    return result;

#else   /* SDP_SERVER_ENABLED == FALSE */
    return (FALSE);
#endif
}