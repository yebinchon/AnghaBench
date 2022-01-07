
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ set_name; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_SetLocalDeviceName (char*) ;
 int bta_dm_set_eir (char*) ;

void bta_dm_set_dev_name (tBTA_DM_MSG *p_data)
{
    BTM_SetLocalDeviceName((char *)p_data->set_name.name);



}
