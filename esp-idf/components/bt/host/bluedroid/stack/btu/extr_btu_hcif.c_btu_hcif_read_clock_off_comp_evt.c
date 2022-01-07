
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT16 ;


 int HCID_GET_HANDLE (int ) ;
 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_UINT16 (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int btm_process_clk_off_comp_evt (int ,int ) ;
 int btm_sec_update_clock_offset (int ,int ) ;

__attribute__((used)) static void btu_hcif_read_clock_off_comp_evt (UINT8 *p)
{
    UINT8 status;
    UINT16 handle;
    UINT16 clock_offset;

    STREAM_TO_UINT8 (status, p);


    if (status != HCI_SUCCESS) {
        return;
    }

    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_UINT16 (clock_offset, p);

    handle = HCID_GET_HANDLE (handle);

    btm_process_clk_off_comp_evt (handle, clock_offset);
    btm_sec_update_clock_offset (handle, clock_offset);
}
