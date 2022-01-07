
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_OOB_DATA ;
typedef int tBTA_IO_CAP ;
typedef int tBTA_AUTH_REQ ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTIF_TRACE_DEBUG (char*,...) ;
 int UNUSED (int ) ;
 int btif_dm_proc_io_req (int ,int *,int *,int *,int ) ;
 int btif_dm_set_oob_for_io_req (int *) ;

void bta_dm_co_io_req(BD_ADDR bd_addr, tBTA_IO_CAP *p_io_cap, tBTA_OOB_DATA *p_oob_data,
                      tBTA_AUTH_REQ *p_auth_req, BOOLEAN is_orig)
{
    UNUSED(bd_addr);






    BTIF_TRACE_DEBUG("bta_dm_co_io_req: func not ported\n");

    BTIF_TRACE_DEBUG("bta_dm_co_io_req *p_oob_data = %d", *p_oob_data);
    BTIF_TRACE_DEBUG("bta_dm_co_io_req *p_io_cap = %d", *p_io_cap);
    BTIF_TRACE_DEBUG("bta_dm_co_io_req *p_auth_req = %d", *p_auth_req);
    BTIF_TRACE_DEBUG("bta_dm_co_io_req is_orig = %d", is_orig);
}
