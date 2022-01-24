#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int list_len; int* rsp_list; TYPE_1__* p_db; } ;
typedef  TYPE_2__ tCONN_CB ;
typedef  int UINT8 ;
typedef  int UINT32 ;
struct TYPE_4__ {unsigned int raw_size; unsigned int raw_used; int /*<<< orphan*/ * raw_data; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int SDP_MAX_LIST_BYTE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,unsigned int) ; 
 int* FUNC3 (int*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5 (tCONN_CB *p_ccb, BOOLEAN offset)
{
    unsigned int    cpy_len;
    UINT32          list_len;
    UINT8           *p;
    UINT8           type;

#if (SDP_DEBUG_RAW == TRUE)
    UINT8 num_array[SDP_MAX_LIST_BYTE_COUNT];
    UINT32 i;

    for (i = 0; i < p_ccb->list_len; i++) {
        FUNC4((char *)&num_array[i * 2], "%02X\n", (UINT8)(p_ccb->rsp_list[i]));
    }
    FUNC1("result :%s\n", num_array);
#endif

    if (p_ccb->p_db->raw_data) {
        cpy_len = p_ccb->p_db->raw_size - p_ccb->p_db->raw_used;
        list_len = p_ccb->list_len;
        p = &p_ccb->rsp_list[0];

        if (offset) {
            type = *p++;
            p = FUNC3 (p, type, &list_len);
        }
        if (list_len < cpy_len ) {
            cpy_len = list_len;
        }
#if (SDP_DEBUG_RAW == TRUE)
        FUNC0("list_len :%d cpy_len:%d raw_size:%d raw_used:%d\n",
                          list_len, cpy_len, p_ccb->p_db->raw_size, p_ccb->p_db->raw_used);
#endif
        if (cpy_len != 0){
            FUNC2 (&p_ccb->p_db->raw_data[p_ccb->p_db->raw_used], p, cpy_len);
            p_ccb->p_db->raw_used += cpy_len;
        }
    }
}