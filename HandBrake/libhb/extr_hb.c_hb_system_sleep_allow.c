
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int system_sleep_opaque; } ;
typedef TYPE_1__ hb_handle_t ;


 int hb_system_sleep_private_enable (int ) ;

void hb_system_sleep_allow(hb_handle_t *h)
{
    hb_system_sleep_private_enable(h->system_sleep_opaque);
}
