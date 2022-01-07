
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int HCID_GET_HANDLE (int ) ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int l2c_link_hci_qos_violation (int ) ;

__attribute__((used)) static void btu_hcif_qos_violation_evt (UINT8 *p)
{
    UINT16 handle;

    STREAM_TO_UINT16 (handle, p);

    handle = HCID_GET_HANDLE (handle);


    l2c_link_hci_qos_violation (handle);
}
