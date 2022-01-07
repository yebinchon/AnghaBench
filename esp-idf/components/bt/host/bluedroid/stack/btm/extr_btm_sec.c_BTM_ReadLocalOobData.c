
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;


 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ btsnd_hcic_read_local_oob_data () ;

tBTM_STATUS BTM_ReadLocalOobData(void)
{
    tBTM_STATUS status = BTM_SUCCESS;

    if (btsnd_hcic_read_local_oob_data() == FALSE) {
        status = BTM_NO_RESOURCES;
    }

    return status;
}
