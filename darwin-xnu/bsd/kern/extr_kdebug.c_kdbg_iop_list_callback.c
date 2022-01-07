
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context; int (* func ) (int ,int ,void*) ;} ;
struct TYPE_5__ {struct TYPE_5__* next; TYPE_1__ callback; } ;
typedef TYPE_2__ kd_iop_t ;
typedef int kd_callback_type ;


 int stub1 (int ,int ,void*) ;

__attribute__((used)) static void
kdbg_iop_list_callback(kd_iop_t* iop, kd_callback_type type, void* arg)
{
 while (iop) {
  iop->callback.func(iop->callback.context, type, arg);
  iop = iop->next;
 }
}
