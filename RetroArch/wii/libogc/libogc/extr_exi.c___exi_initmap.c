
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _lck_dev {int dummy; } ;
typedef size_t s32 ;
struct TYPE_3__ {int lckd_dev; scalar_t__ lckd_dev_bits; scalar_t__ lockeddev; scalar_t__ lck_cnt; scalar_t__ imm_len; scalar_t__ flags; scalar_t__ exi_idtime; scalar_t__ exi_id; int * imm_buff; int * CallbackTC; int * CallbackEXT; int * CallbackEXI; } ;
typedef TYPE_1__ exibus_priv ;


 int EXI_LOCK_DEVS ;
 size_t EXI_MAX_CHANNELS ;
 int __lwp_queue_init_empty (int *) ;
 int __lwp_queue_initialize (int *,int ,int ,int) ;
 int _lckdev_queue ;
 int lckdevs ;

__attribute__((used)) static void __exi_initmap(exibus_priv *exim)
{
 s32 i;
 exibus_priv *m;

 __lwp_queue_initialize(&_lckdev_queue,lckdevs,EXI_LOCK_DEVS,sizeof(struct _lck_dev));

 for(i=0;i<EXI_MAX_CHANNELS;i++) {
  m = &exim[i];
  m->CallbackEXI = ((void*)0);
  m->CallbackEXT = ((void*)0);
  m->CallbackTC = ((void*)0);
  m->imm_buff = ((void*)0);
  m->exi_id = 0;
  m->exi_idtime = 0;
  m->flags = 0;
  m->imm_len = 0;
  m->lck_cnt = 0;
  m->lockeddev = 0;
  m->lckd_dev_bits = 0;
  __lwp_queue_init_empty(&m->lckd_dev);
 }
}
