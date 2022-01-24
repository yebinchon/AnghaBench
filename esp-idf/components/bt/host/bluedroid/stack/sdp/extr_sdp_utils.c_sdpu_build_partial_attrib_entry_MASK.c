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
typedef  int /*<<< orphan*/  tSDP_ATTRIBUTE ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  size_t UINT16 ;

/* Variables and functions */
 int SDP_MAX_ATTR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

UINT8 *FUNC6 (UINT8 *p_out, tSDP_ATTRIBUTE *p_attr, UINT16 len, UINT16 *offset)
{
    UINT8   *p_attr_buff;
    UINT8   *p_tmp_attr;
    size_t  len_to_copy;
    UINT16  attr_len;

    if ((p_attr_buff = (UINT8 *) FUNC3(sizeof(UINT8) * SDP_MAX_ATTR_LEN )) == NULL) {
        FUNC0("sdpu_build_partial_attrib_entry cannot get a buffer!\n");
        return NULL;
    }
    p_tmp_attr = p_attr_buff;

    FUNC4(p_tmp_attr, p_attr);
    attr_len = FUNC5(p_attr);

    len_to_copy = ((attr_len - *offset) < len) ? (attr_len - *offset) : len;

    FUNC1(p_out, &p_attr_buff[*offset], len_to_copy);

    p_out = &p_out[len_to_copy];
    *offset += len_to_copy;

    FUNC2(p_attr_buff);
    return p_out;
}