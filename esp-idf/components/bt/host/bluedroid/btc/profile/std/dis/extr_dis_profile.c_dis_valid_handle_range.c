
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT16 ;
struct TYPE_2__ {scalar_t__ service_handle; scalar_t__ max_handle; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 TYPE_1__ dis_cb ;

BOOLEAN dis_valid_handle_range(UINT16 handle)
{
    if (handle >= dis_cb.service_handle && handle <= dis_cb.max_handle) {
        return TRUE;
    } else {
        return FALSE;
    }
}
