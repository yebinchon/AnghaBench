
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int max_collision_delay; int pairing_bda; int security_mode; } ;


 int BD_ADDR_LEN ;
 int BTM_SEC_MAX_COLLISION_DELAY ;
 TYPE_1__ btm_cb ;
 int memset (int ,int,int ) ;

void btm_sec_init (UINT8 sec_mode)
{
    btm_cb.security_mode = sec_mode;
    memset (btm_cb.pairing_bda, 0xff, BD_ADDR_LEN);
    btm_cb.max_collision_delay = BTM_SEC_MAX_COLLISION_DELAY;
}
