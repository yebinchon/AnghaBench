
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wiimote ;
typedef size_t u32 ;
struct bd_addr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* active; } ;
struct TYPE_3__ {int * bdaddr; } ;


 int BD_ADDR (struct bd_addr*,int ,int ,int ,int ,int ,int ) ;
 size_t CONF_PAD_MAX_ACTIVE ;
 size_t WPAD_MAX_WIIMOTES ;
 int _CPU_ISR_Disable (size_t) ;
 int _CPU_ISR_Restore (size_t) ;
 TYPE_2__ __wpad_devs ;
 int ** __wpads ;
 int __wpads_used ;
 scalar_t__ bd_addr_cmp (struct bd_addr*,struct bd_addr*) ;

wiimote *__wpad_assign_slot(struct bd_addr *pad_addr)
{
    u32 i, level;
    struct bd_addr bdaddr;

    _CPU_ISR_Disable(level);


    for(i=0; i<CONF_PAD_MAX_ACTIVE ; i++) {
        BD_ADDR(&(bdaddr),__wpad_devs.active[i].bdaddr[5],__wpad_devs.active[i].bdaddr[4],__wpad_devs.active[i].bdaddr[3],__wpad_devs.active[i].bdaddr[2],__wpad_devs.active[i].bdaddr[1],__wpad_devs.active[i].bdaddr[0]);
        if(bd_addr_cmp(pad_addr,&bdaddr) && !(__wpads_used & (1<<i))) {

            __wpads_used |= (0x01<<i);
            _CPU_ISR_Restore(level);
            return __wpads[i];
        }
    }


    for(i=0; i<WPAD_MAX_WIIMOTES; i++) {
        if(!(__wpads_used & (1<<i))) {

            __wpads_used |= (0x01<<i);
            _CPU_ISR_Restore(level);
            return __wpads[i];
        }
    }

    _CPU_ISR_Restore(level);
    return ((void*)0);
}
