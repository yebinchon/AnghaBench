
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_10__ {TYPE_2__* lh_first; } ;
struct TYPE_8__ {TYPE_2__* le_next; } ;
struct TYPE_9__ {scalar_t__ p_pid; TYPE_1__ p_hash; } ;


 TYPE_7__* PIDHASH (scalar_t__) ;
 TYPE_2__* kernproc ;
 int panic (char*,TYPE_2__*,TYPE_2__*,scalar_t__,scalar_t__) ;

proc_t
pfind_locked(pid_t pid)
{
 proc_t p;




 if (!pid)
  return (kernproc);

 for (p = PIDHASH(pid)->lh_first; p != 0; p = p->p_hash.le_next) {
  if (p->p_pid == pid) {






   return (p);
  }
 }
 return (((void*)0));
}
