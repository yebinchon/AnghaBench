
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_OOB_DATA ;
typedef int tBTA_IO_CAP ;
typedef int tBTA_AUTH_REQ ;
typedef int BD_ADDR ;


 int BTIF_TRACE_DEBUG (char*) ;
 int btif_dm_proc_io_rsp (int ,int ,int ,int ) ;

void bta_dm_co_io_rsp(BD_ADDR bd_addr, tBTA_IO_CAP io_cap,
                      tBTA_OOB_DATA oob_data, tBTA_AUTH_REQ auth_req)
{



    BTIF_TRACE_DEBUG("bta_dm_co_io_rsp: func not ported\n");

}
