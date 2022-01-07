
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int BTM_DEV_STATUS_DOWN ;
 int BTM_DeviceReset (int *) ;
 scalar_t__ BTM_IsDeviceUp () ;
 int HCI_TRACE_ERROR (char*,int ) ;
 int btm_report_device_status (int ) ;

__attribute__((used)) static void btu_hcif_hardware_error_evt (UINT8 *p)
{
    HCI_TRACE_ERROR("Ctlr H/w error event - code:0x%x\n", *p);


    btm_report_device_status (BTM_DEV_STATUS_DOWN);


    if (BTM_IsDeviceUp()) {
        BTM_DeviceReset (((void*)0));
    }
}
