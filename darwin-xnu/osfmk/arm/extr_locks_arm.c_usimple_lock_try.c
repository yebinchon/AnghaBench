
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* usimple_lock_t ;
typedef int simple_lock_t ;
typedef int pc_t ;
struct TYPE_6__ {int lck_spin_data; } ;


 int OBTAIN_PC (int ,TYPE_1__*) ;
 int USLDBG (int ) ;
 unsigned int hw_lock_try (int *) ;
 unsigned int simple_lock_try (int ) ;
 int usld_lock_try_post (TYPE_1__*,int ) ;
 int usld_lock_try_pre (TYPE_1__*,int ) ;

unsigned int
usimple_lock_try(
   usimple_lock_t l)
{

 pc_t pc;
 unsigned int success;

 OBTAIN_PC(pc, l);
 USLDBG(usld_lock_try_pre(l, pc));
 if ((success = hw_lock_try(&l->lck_spin_data))) {
  USLDBG(usld_lock_try_post(l, pc));
 }
 return success;



}
