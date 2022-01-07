
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_SCO_TYPE ;
typedef int tBTM_ESCO_PARAMS ;
struct TYPE_3__ {int desired_sco_mode; int def_esco_parms; } ;
struct TYPE_4__ {TYPE_1__ sco_cb; } ;


 int BTM_LINK_TYPE_SCO ;
 TYPE_2__ btm_cb ;

tBTM_SCO_TYPE btm_read_def_esco_mode (tBTM_ESCO_PARAMS *p_parms)
{




    return BTM_LINK_TYPE_SCO;

}
