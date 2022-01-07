
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* usimple_lock_t ;
typedef int simple_lock_t ;
struct TYPE_5__ {int interlock; } ;


 int DECL_PC (int ) ;
 int FALSE ;
 int OBTAIN_PC (int ) ;
 int USLDBG (int ) ;
 unsigned int hw_lock_try (int *) ;
 int pc ;
 int pltrace (int ) ;
 unsigned int simple_lock_try (int ) ;
 int usld_lock_try_post (TYPE_1__*,int ) ;
 int usld_lock_try_pre (TYPE_1__*,int ) ;

unsigned int
usimple_lock_try(
 usimple_lock_t l)
{

 unsigned int success;
 DECL_PC(pc);

 OBTAIN_PC(pc);
 USLDBG(usld_lock_try_pre(l, pc));
 if ((success = hw_lock_try(&l->interlock))) {



 USLDBG(usld_lock_try_post(l, pc));
 }
 return success;



}
