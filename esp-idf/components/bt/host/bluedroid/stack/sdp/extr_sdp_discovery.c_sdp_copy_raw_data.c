
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int list_len; int* rsp_list; TYPE_1__* p_db; } ;
typedef TYPE_2__ tCONN_CB ;
typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {unsigned int raw_size; unsigned int raw_used; int * raw_data; } ;
typedef scalar_t__ BOOLEAN ;


 int SDP_MAX_LIST_BYTE_COUNT ;
 int SDP_TRACE_DEBUG (char*,int,unsigned int,unsigned int,unsigned int) ;
 int SDP_TRACE_WARNING (char*,int*) ;
 int memcpy (int *,int*,unsigned int) ;
 int* sdpu_get_len_from_type (int*,int,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void sdp_copy_raw_data (tCONN_CB *p_ccb, BOOLEAN offset)
{
    unsigned int cpy_len;
    UINT32 list_len;
    UINT8 *p;
    UINT8 type;


    UINT8 num_array[SDP_MAX_LIST_BYTE_COUNT];
    UINT32 i;

    for (i = 0; i < p_ccb->list_len; i++) {
        sprintf((char *)&num_array[i * 2], "%02X\n", (UINT8)(p_ccb->rsp_list[i]));
    }
    SDP_TRACE_WARNING("result :%s\n", num_array);


    if (p_ccb->p_db->raw_data) {
        cpy_len = p_ccb->p_db->raw_size - p_ccb->p_db->raw_used;
        list_len = p_ccb->list_len;
        p = &p_ccb->rsp_list[0];

        if (offset) {
            type = *p++;
            p = sdpu_get_len_from_type (p, type, &list_len);
        }
        if (list_len < cpy_len ) {
            cpy_len = list_len;
        }

        SDP_TRACE_DEBUG("list_len :%d cpy_len:%d raw_size:%d raw_used:%d\n",
                          list_len, cpy_len, p_ccb->p_db->raw_size, p_ccb->p_db->raw_used);

        if (cpy_len != 0){
            memcpy (&p_ccb->p_db->raw_data[p_ccb->p_db->raw_used], p, cpy_len);
            p_ccb->p_db->raw_used += cpy_len;
        }
    }
}
