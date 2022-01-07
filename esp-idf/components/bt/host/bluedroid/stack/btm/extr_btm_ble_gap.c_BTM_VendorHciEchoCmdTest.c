
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BTM_VendorHciEchoCmdCallback ;
 int BTM_VendorSpecificCommand (int ,int,int *,int ) ;
 int HCI_VENDOR_COMMON_ECHO_CMD_OPCODE ;

void BTM_VendorHciEchoCmdTest(uint8_t echo)
{
    BTM_VendorSpecificCommand (HCI_VENDOR_COMMON_ECHO_CMD_OPCODE,
                                1,
                                &echo,
                                BTM_VendorHciEchoCmdCallback);
}
