
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int svc_buffer; int mem_free; int * p_free_mem; } ;
typedef TYPE_1__ tGATT_SVC_DB ;
typedef int UINT8 ;
typedef int BT_HDR ;
typedef int BOOLEAN ;


 int FALSE ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 int GATT_DB_BUF_SIZE ;
 int GATT_TRACE_DEBUG (char*) ;
 int GATT_TRACE_ERROR (char*) ;
 int TRUE ;
 int fixed_queue_enqueue (int ,int *,int ) ;
 scalar_t__ osi_calloc (int ) ;

__attribute__((used)) static BOOLEAN allocate_svc_db_buf(tGATT_SVC_DB *p_db)
{
    BT_HDR *p_buf;

    GATT_TRACE_DEBUG("allocate_svc_db_buf allocating extra buffer");

    if ((p_buf = (BT_HDR *)osi_calloc(GATT_DB_BUF_SIZE)) == ((void*)0)) {
        GATT_TRACE_ERROR("allocate_svc_db_buf failed, no resources");
        return FALSE;
    }

    p_db->p_free_mem = (UINT8 *) p_buf;
    p_db->mem_free = GATT_DB_BUF_SIZE;

    fixed_queue_enqueue(p_db->svc_buffer, p_buf, FIXED_QUEUE_MAX_TIMEOUT);

    return TRUE;

}
