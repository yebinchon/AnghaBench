
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {int acl_disc_reason; } ;


 int BTM_TRACE_DEBUG (char*) ;
 TYPE_1__ btm_cb ;

UINT16 btm_get_acl_disc_reason_code (void)
{
    UINT8 res = btm_cb.acl_disc_reason;
    BTM_TRACE_DEBUG ("btm_get_acl_disc_reason_code\n");
    return (res);
}
