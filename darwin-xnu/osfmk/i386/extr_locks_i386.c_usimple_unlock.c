
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* usimple_lock_t ;
typedef int simple_lock_t ;
struct TYPE_4__ {int interlock; } ;


 int DECL_PC (int ) ;
 int OBTAIN_PC (int ) ;
 int TRUE ;
 int USLDBG (int ) ;
 int hw_lock_unlock (int *) ;
 int pc ;
 int pltrace (int ) ;
 int simple_unlock_rwmb (int ) ;
 int usld_unlock (TYPE_1__*,int ) ;

void
usimple_unlock(
 usimple_lock_t l)
{

 DECL_PC(pc);

 OBTAIN_PC(pc);
 USLDBG(usld_unlock(l, pc));



 hw_lock_unlock(&l->interlock);



}
