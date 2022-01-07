
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* usimple_lock_t ;
typedef int simple_lock_t ;
struct TYPE_4__ {int lck_spin_data; } ;


 int USLDBG (int ) ;
 int hw_lock_init (int *) ;
 int simple_lock_init (int ,unsigned short) ;
 int usld_lock_init (TYPE_1__*,unsigned short) ;

void
usimple_lock_init(
    usimple_lock_t l,
    unsigned short tag)
{

 USLDBG(usld_lock_init(l, tag));
 hw_lock_init(&l->lck_spin_data);



}
