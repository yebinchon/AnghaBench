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
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  size_t UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  DATA_ELE_SEQ_DESC_TYPE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int SDP_MAX_ATTR_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int SIZE_EIGHT_BYTES ; 
 int SIZE_FOUR_BYTES ; 
 int SIZE_IN_NEXT_BYTE ; 
 int SIZE_ONE_BYTE ; 
 int SIZE_SIXTEEN_BYTES ; 
 int SIZE_TWO_BYTES ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int) ; 

BOOLEAN FUNC6 (UINT32 handle,  UINT16 attr_id, UINT16 num_elem,
                         UINT8 type[], UINT8 len[], UINT8 *p_val[])
{
#if SDP_SERVER_ENABLED == TRUE
    UINT16          xx;
    UINT8           *p_buff;
    UINT8           *p;
    UINT8           *p_head;
    BOOLEAN         result;

    if ((p_buff = (UINT8 *) FUNC5(sizeof(UINT8) * SDP_MAX_ATTR_LEN * 2)) == NULL) {
        FUNC2("SDP_AddSequence cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff;

    /* First, build the sequence */
    for (xx = 0; xx < num_elem; xx++) {
        p_head = p;
        switch (len[xx]) {
        case 1:
            FUNC3 (p, (type[xx] << 3) | SIZE_ONE_BYTE);
            break;
        case 2:
            FUNC3  (p, (type[xx] << 3) | SIZE_TWO_BYTES);
            break;
        case 4:
            FUNC3  (p, (type[xx] << 3) | SIZE_FOUR_BYTES);
            break;
        case 8:
            FUNC3  (p, (type[xx] << 3) | SIZE_EIGHT_BYTES);
            break;
        case 16:
            FUNC3  (p, (type[xx] << 3) | SIZE_SIXTEEN_BYTES);
            break;
        default:
            FUNC3 (p, (type[xx] << 3) | SIZE_IN_NEXT_BYTE);
            FUNC3 (p, len[xx]);
            break;
        }

        FUNC0 (p, p_val[xx], len[xx]);

        if (p - p_buff > SDP_MAX_ATTR_LEN) {
            /* go back to before we add this element */
            p = p_head;
            if (p_head == p_buff) {
                /* the first element exceed the max length */
                FUNC2 ("SDP_AddSequence - too long(attribute is not added)!!\n");
                FUNC4(p_buff);
                return FALSE;
            } else {
                FUNC2 ("SDP_AddSequence - too long, add %d elements of %d\n", xx, num_elem);
            }
            break;
        }
    }
    result = FUNC1 (handle, attr_id, DATA_ELE_SEQ_DESC_TYPE, (UINT32) (p - p_buff), p_buff);
    FUNC4(p_buff);
    return result;
#else   /* SDP_SERVER_ENABLED == FALSE */
    return (FALSE);
#endif
}