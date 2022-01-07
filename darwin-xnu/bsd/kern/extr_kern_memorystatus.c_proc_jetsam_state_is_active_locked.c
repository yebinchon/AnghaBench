
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int boolean_t ;
struct TYPE_3__ {int p_memstat_state; scalar_t__ p_memstat_effectivepriority; int p_memstat_dirty; } ;


 int FALSE ;
 scalar_t__ JETSAM_PRIORITY_ELEVATED_INACTIVE ;
 scalar_t__ JETSAM_PRIORITY_FOREGROUND ;
 int P_DIRTY_IS_DIRTY ;
 int P_DIRTY_TRACK ;
 int P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND ;
 int TRUE ;

__attribute__((used)) static boolean_t
proc_jetsam_state_is_active_locked(proc_t p) {

 if ((p->p_memstat_state & P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND) &&
     (p->p_memstat_effectivepriority == JETSAM_PRIORITY_ELEVATED_INACTIVE)) {





  return TRUE;
 } else if (p->p_memstat_dirty & P_DIRTY_TRACK) {




  if (p->p_memstat_dirty & P_DIRTY_IS_DIRTY) {




   return TRUE;
  } else {




   return FALSE;
  }
 } else if (p->p_memstat_effectivepriority >= JETSAM_PRIORITY_FOREGROUND) {




  return TRUE;
 } else {




  return FALSE;
 }
}
