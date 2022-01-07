
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int x86_debug_state32_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_4__ {int * ids; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;


 int TRUE ;
 int bzero (int *,int) ;
 int copy_debug_state32 (int *,int *,int ) ;

__attribute__((used)) static void
get_debug_state32(thread_t thread, x86_debug_state32_t *ds)
{
 x86_debug_state32_t *saved_state;

 saved_state = thread->machine.ids;

 if (saved_state) {
  copy_debug_state32(saved_state, ds, TRUE);
 } else
  bzero(ds, sizeof *ds);
}
