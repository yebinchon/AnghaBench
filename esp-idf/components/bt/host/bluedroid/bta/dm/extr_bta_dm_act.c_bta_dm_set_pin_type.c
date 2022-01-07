
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pin_len; int p_pin; int pin_type; } ;
struct TYPE_5__ {TYPE_1__ set_pin_type; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_SetPinType (int ,int ,int ) ;

void bta_dm_set_pin_type (tBTA_DM_MSG *p_data)
{

    BTM_SetPinType (p_data->set_pin_type.pin_type, p_data->set_pin_type.p_pin, p_data->set_pin_type.pin_len);

}
