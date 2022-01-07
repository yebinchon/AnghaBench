
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_ESCO_DATA ;
typedef size_t UINT8 ;
typedef size_t UINT16 ;
struct TYPE_6__ {TYPE_3__* sco_db; } ;
struct TYPE_8__ {TYPE_2__ sco_cb; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_1__ esco; } ;


 size_t BTM_FIRST_ACTIVE_SCO_INDEX ;
 size_t BTM_MAX_SCO_LINKS ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*,...) ;
 int BTM_WRONG_MODE ;
 scalar_t__ SCO_ST_CONNECTED ;
 TYPE_4__ btm_cb ;
 int memset (int *,int ,int) ;

tBTM_STATUS BTM_ReadEScoLinkParms (UINT16 sco_inx, tBTM_ESCO_DATA *p_parms)
{
    BTM_TRACE_API("BTM_ReadEScoLinkParms cannot find the SCO index!");
    memset(p_parms, 0, sizeof(tBTM_ESCO_DATA));
    return (BTM_WRONG_MODE);
}
