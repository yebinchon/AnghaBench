
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int btm_def_link_super_tout; } ;


 int BTM_TRACE_DEBUG (char*) ;
 TYPE_1__ btm_cb ;

void BTM_SetDefaultLinkSuperTout (UINT16 timeout)
{
    BTM_TRACE_DEBUG ("BTM_SetDefaultLinkSuperTout\n");
    btm_cb.btm_def_link_super_tout = timeout;
}
