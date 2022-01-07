
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;
typedef int UINT16 ;


 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*,int ) ;
 scalar_t__ btsnd_hcic_write_page_tout (int ) ;

tBTM_STATUS BTM_WritePageTimeout(UINT16 timeout)
{
    BTM_TRACE_EVENT ("BTM: BTM_WritePageTimeout: Timeout: %d.", timeout);


    if (btsnd_hcic_write_page_tout (timeout)) {
        return (BTM_SUCCESS);
    } else {
        return (BTM_NO_RESOURCES);
    }
}
