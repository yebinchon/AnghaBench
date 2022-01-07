
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_ESCO_CBACK ;
typedef size_t UINT16 ;
struct TYPE_5__ {TYPE_3__* sco_db; int esco_supported; } ;
struct TYPE_8__ {TYPE_1__ sco_cb; } ;
struct TYPE_6__ {int * p_esco_cback; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_2__ esco; } ;


 int BTM_ILLEGAL_VALUE ;
 size_t BTM_MAX_SCO_LINKS ;
 int BTM_MODE_UNSUPPORTED ;
 int BTM_SUCCESS ;
 scalar_t__ SCO_ST_UNUSED ;
 TYPE_4__ btm_cb ;

tBTM_STATUS BTM_RegForEScoEvts (UINT16 sco_inx, tBTM_ESCO_CBACK *p_esco_cback)
{
    return (BTM_MODE_UNSUPPORTED);

}
