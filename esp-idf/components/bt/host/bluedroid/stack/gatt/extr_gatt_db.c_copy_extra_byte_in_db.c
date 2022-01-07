
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mem_free; int * p_free_mem; } ;
typedef TYPE_1__ tGATT_SVC_DB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int GATT_TRACE_ERROR (char*) ;
 int TRUE ;
 int allocate_svc_db_buf (TYPE_1__*) ;
 int memset (void*,int ,scalar_t__) ;

__attribute__((used)) static BOOLEAN copy_extra_byte_in_db(tGATT_SVC_DB *p_db, void **p_dst, UINT16 len)
{
    UINT8 *p = (UINT8 *)*p_dst;

    if (p_db->mem_free < len) {
        if (!allocate_svc_db_buf(p_db)) {
            GATT_TRACE_ERROR("copy_extra_byte_in_db failed, no resources\n");
            return FALSE;
        }
    }

    p = p_db->p_free_mem;
    p_db->p_free_mem += len;
    p_db->mem_free -= len;
    memset((void *)p, 0, len);
    *p_dst = (void *)p;

    return TRUE;
}
