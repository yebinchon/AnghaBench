
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int len; int bd_addr; } ;
struct TYPE_5__ {TYPE_1__ oob_reply; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_BleOobDataReply (int ,int ,int ,int ) ;
 int BTM_SUCCESS ;

void bta_dm_oob_reply(tBTA_DM_MSG *p_data)
{



}
