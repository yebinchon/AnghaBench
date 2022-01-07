
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf {scalar_t__ lf_id; scalar_t__ lf_type; int lf_end; int lf_start; struct lockf* lf_next; struct lockf** lf_head; } ;


 int FREE (struct lockf*,int ) ;
 int LF_DBG_LIST ;
 int LOCKF_DEBUG (int ,char*) ;
 int M_LOCKF ;
 struct lockf* NOLOCKF ;
 int lf_move_blocked (struct lockf*,struct lockf*) ;

__attribute__((used)) static void
lf_coalesce_adjacent(struct lockf *lock)
{
 struct lockf **lf = lock->lf_head;

 while (*lf != NOLOCKF) {

  if ((*lf == lock) ||
      ((*lf)->lf_id != lock->lf_id) ||
      ((*lf)->lf_type != lock->lf_type)) {
   lf = &(*lf)->lf_next;
   continue;
  }





  if ((*lf)->lf_end != -1 &&
      ((*lf)->lf_end + 1) == lock->lf_start) {
   struct lockf *adjacent = *lf;

   LOCKF_DEBUG(LF_DBG_LIST, "lf_coalesce_adjacent: coalesce adjacent previous\n");
   lock->lf_start = (*lf)->lf_start;
   *lf = lock;
   lf = &(*lf)->lf_next;

   lf_move_blocked(lock, adjacent);

   FREE(adjacent, M_LOCKF);
   continue;
  }

  if (lock->lf_end != -1 &&
      (lock->lf_end + 1) == (*lf)->lf_start) {
   struct lockf *adjacent = *lf;

   LOCKF_DEBUG(LF_DBG_LIST, "lf_coalesce_adjacent: coalesce adjacent following\n");
   lock->lf_end = (*lf)->lf_end;
   lock->lf_next = (*lf)->lf_next;
   lf = &lock->lf_next;

   lf_move_blocked(lock, adjacent);

   FREE(adjacent, M_LOCKF);
   continue;
  }


  lf = &(*lf)->lf_next;
 }
}
