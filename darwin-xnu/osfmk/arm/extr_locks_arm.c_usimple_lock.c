
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* usimple_lock_t ;
typedef int simple_lock_t ;
typedef int pc_t ;
struct TYPE_7__ {int lck_spin_data; } ;


 int LockTimeOut ;
 int OBTAIN_PC (int ,TYPE_1__*) ;
 int USLDBG (int ) ;
 int cpu_number () ;
 int hw_lock_to (int *,int ) ;
 int panic (char*,TYPE_1__**,int ,int ) ;
 int simple_lock (int ) ;
 int usld_lock_post (TYPE_1__*,int ) ;
 int usld_lock_pre (TYPE_1__*,int ) ;

void
usimple_lock(
      usimple_lock_t l)
{

 pc_t pc;

 OBTAIN_PC(pc, l);
 USLDBG(usld_lock_pre(l, pc));

 if (!hw_lock_to(&l->lck_spin_data, LockTimeOut))

  panic("simple lock deadlock detection - l=%p, cpu=%d, ret=%p", &l, cpu_number(), pc);

 USLDBG(usld_lock_post(l, pc));



}
