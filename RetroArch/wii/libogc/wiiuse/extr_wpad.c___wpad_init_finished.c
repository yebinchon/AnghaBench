
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct bd_addr {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {size_t num_registered; TYPE_1__* registered; } ;
struct TYPE_3__ {int * bdaddr; } ;


 int BD_ADDR (struct bd_addr*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ ERR_OK ;
 int WPAD_STATE_ENABLED ;
 int __wpad_assign_slot ;
 TYPE_2__ __wpad_devs ;
 int __wpads_inited ;
 int * __wpads_listen ;
 int wiiuse_register (int *,struct bd_addr*,int ) ;

__attribute__((used)) static s32 __wpad_init_finished(s32 result,void *usrdata)
{
 u32 i;
 struct bd_addr bdaddr;



   if(result==ERR_OK) {
      for(i=0; i<__wpad_devs.num_registered;i++) {
         BD_ADDR(&(bdaddr),__wpad_devs.registered[i].bdaddr[5],__wpad_devs.registered[i].bdaddr[4],__wpad_devs.registered[i].bdaddr[3],__wpad_devs.registered[i].bdaddr[2],__wpad_devs.registered[i].bdaddr[1],__wpad_devs.registered[i].bdaddr[0]);
         wiiuse_register(&__wpads_listen[i],&(bdaddr),__wpad_assign_slot);
      }
   }
   __wpads_inited = WPAD_STATE_ENABLED;
 return ERR_OK;
}
