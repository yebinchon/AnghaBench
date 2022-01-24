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
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ID_LANGUAGE_BASE_ATTR_ID_LIST ; 
 int /*<<< orphan*/  DATA_ELE_SEQ_DESC_TYPE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SDP_MAX_ATTR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SIZE_TWO_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int UINT_DESC_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

BOOLEAN FUNC6 (UINT32 handle, UINT16 lang,
                                       UINT16 char_enc, UINT16 base_id)
{
#if SDP_SERVER_ENABLED == TRUE
    UINT8           *p_buff;
    UINT8           *p;
    BOOLEAN         result;

    if ((p_buff = (UINT8 *) FUNC5(sizeof(UINT8) * SDP_MAX_ATTR_LEN)) == NULL) {
        FUNC1("SDP_AddLanguageBaseAttrIDList cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff;

    /* First, build the language base descriptor list. This consists of a data */
    /* element sequence. The sequence consists of 9 bytes (3 UINt16 fields)    */
    FUNC3  (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    FUNC2 (p, lang);

    FUNC3  (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    FUNC2 (p, char_enc);

    FUNC3  (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    FUNC2 (p, base_id);

    result = FUNC0 (handle, ATTR_ID_LANGUAGE_BASE_ATTR_ID_LIST, DATA_ELE_SEQ_DESC_TYPE,
                               (UINT32) (p - p_buff), p_buff);
    FUNC4(p_buff);
    return result;
#else   /* SDP_SERVER_ENABLED == FALSE */
    return (FALSE);
#endif
}