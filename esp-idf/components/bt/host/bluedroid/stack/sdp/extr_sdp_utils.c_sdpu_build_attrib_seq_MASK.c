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
typedef  int UINT16 ;

/* Variables and functions */
 int DATA_ELE_SEQ_DESC_TYPE ; 
 int SIZE_FOUR_BYTES ; 
 int SIZE_IN_NEXT_BYTE ; 
 int SIZE_IN_NEXT_WORD ; 
 int SIZE_TWO_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int UINT_DESC_TYPE ; 

UINT8 *FUNC2 (UINT8 *p_out, UINT16 *p_attr, UINT16 num_attrs)
{
    UINT16  xx;

    /* First thing is the data element header. See if the length fits 1 byte */
    /* If no attributes, assume a 4-byte wildcard */
    if (!p_attr) {
        xx = 5;
    } else {
        xx = num_attrs * 3;
    }

    if (xx > 255) {
        FUNC1  (p_out, (DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_WORD);
        FUNC0 (p_out, xx);
    } else {
        FUNC1 (p_out, (DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_BYTE);
        FUNC1 (p_out, xx);
    }

    /* If there are no attributes specified, assume caller wants wildcard */
    if (!p_attr) {
        FUNC1  (p_out, (UINT_DESC_TYPE << 3) | SIZE_FOUR_BYTES);
        FUNC0 (p_out, 0);
        FUNC0 (p_out, 0xFFFF);
    } else {
        /* Loop through and put in all the attributes(s) */
        for (xx = 0; xx < num_attrs; xx++, p_attr++) {
            FUNC1  (p_out, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
            FUNC0 (p_out, *p_attr);
        }
    }

    return (p_out);
}