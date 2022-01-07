
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 scalar_t__ BD_ADDR_LEN ;
 int STREAM_TO_BDADDR (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_process_remote_name (int ,int *,int ,int ) ;
 int btm_sec_rmt_name_request_complete (int ,int *,int ) ;

__attribute__((used)) static void btu_hcif_rmt_name_request_comp_evt (UINT8 *p, UINT16 evt_len)
{
    UINT8 status;
    BD_ADDR bd_addr;

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_BDADDR (bd_addr, p);

    evt_len -= (1 + BD_ADDR_LEN);

    btm_process_remote_name (bd_addr, p, evt_len, status);

    btm_sec_rmt_name_request_complete (bd_addr, p, status);

}
