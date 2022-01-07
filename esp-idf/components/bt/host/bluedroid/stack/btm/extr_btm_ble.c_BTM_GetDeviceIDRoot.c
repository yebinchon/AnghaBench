
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irk; } ;
struct TYPE_5__ {TYPE_1__ id_keys; } ;
struct TYPE_6__ {TYPE_2__ devcb; } ;
typedef int BT_OCTET16 ;


 int BTM_TRACE_DEBUG (char*) ;
 int BT_OCTET16_LEN ;
 TYPE_3__ btm_cb ;
 int memcpy (int ,int ,int ) ;

void BTM_GetDeviceIDRoot (BT_OCTET16 irk)
{
    BTM_TRACE_DEBUG ("BTM_GetDeviceIDRoot ");

    memcpy (irk, btm_cb.devcb.id_keys.irk, BT_OCTET16_LEN);
}
