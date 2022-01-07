
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* usimple_lock_t ;
typedef int simple_lock_t ;
typedef int pc_t ;
struct TYPE_5__ {int lck_spin_data; } ;


 int OBTAIN_PC (int ,TYPE_1__*) ;
 int USLDBG (int ) ;
 int hw_lock_unlock (int *) ;
 int simple_unlock (int ) ;
 int sync () ;
 int usld_unlock (TYPE_1__*,int ) ;

void
usimple_unlock(
        usimple_lock_t l)
{

 pc_t pc;

 OBTAIN_PC(pc, l);
 USLDBG(usld_unlock(l, pc));
 sync();
 hw_lock_unlock(&l->lck_spin_data);



}
