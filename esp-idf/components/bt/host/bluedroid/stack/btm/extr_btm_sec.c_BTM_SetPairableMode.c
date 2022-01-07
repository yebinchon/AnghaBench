
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pairing_disabled; int connect_only_paired; } ;
typedef int BOOLEAN ;


 int BTM_TRACE_API (char*,int ,int ) ;
 TYPE_1__ btm_cb ;

void BTM_SetPairableMode (BOOLEAN allow_pairing, BOOLEAN connect_only_paired)
{
    BTM_TRACE_API ("BTM_SetPairableMode()  allow_pairing: %u   connect_only_paired: %u\n", allow_pairing, connect_only_paired);

    btm_cb.pairing_disabled = !allow_pairing;
    btm_cb.connect_only_paired = connect_only_paired;
}
