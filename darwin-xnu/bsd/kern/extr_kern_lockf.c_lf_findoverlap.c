
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf {int lf_start; int lf_end; scalar_t__ lf_id; struct lockf* lf_next; } ;
typedef int overlap_t ;
typedef int off_t ;


 int LF_DBG_LIST ;
 int LOCKF_DEBUG (int,char*) ;
 struct lockf* NOLOCKF ;
 int OTHERS ;
 int OVERLAP_CONTAINED_BY_LOCK ;
 int OVERLAP_CONTAINS_LOCK ;
 int OVERLAP_ENDS_AFTER_LOCK ;
 int OVERLAP_EQUALS_LOCK ;
 int OVERLAP_NONE ;
 int OVERLAP_STARTS_BEFORE_LOCK ;
 int SELF ;
 int lf_print (char*,struct lockf*) ;
 int lockf_debug ;
 int panic (char*) ;

__attribute__((used)) static overlap_t
lf_findoverlap(struct lockf *lf, struct lockf *lock, int type,
        struct lockf ***prev, struct lockf **overlap)
{
 off_t start, end;
 int found_self = 0;

 *overlap = lf;
 if (lf == NOLOCKF)
  return (0);




 start = lock->lf_start;
 end = lock->lf_end;
 while (lf != NOLOCKF) {
  if (((type & SELF) && lf->lf_id != lock->lf_id) ||
      ((type & OTHERS) && lf->lf_id == lock->lf_id)) {
   if ((type & SELF) && found_self) {
    return OVERLAP_NONE;
   }

   *prev = &lf->lf_next;
   *overlap = lf = lf->lf_next;
   continue;
  }

  if ((type & SELF)) {
   found_self = 1;
  }
  if ((lf->lf_end != -1 && start > lf->lf_end) ||
      (end != -1 && lf->lf_start > end)) {

   LOCKF_DEBUG(LF_DBG_LIST, "no overlap\n");





   if ((type & SELF) && end != -1 && lf->lf_start > end)
    return (OVERLAP_NONE);
   *prev = &lf->lf_next;
   *overlap = lf = lf->lf_next;
   continue;
  }
  if ((lf->lf_start == start) && (lf->lf_end == end)) {
   LOCKF_DEBUG(LF_DBG_LIST, "overlap == lock\n");
   return (OVERLAP_EQUALS_LOCK);
  }
  if ((lf->lf_start <= start) &&
      (end != -1) &&
      ((lf->lf_end >= end) || (lf->lf_end == -1))) {
   LOCKF_DEBUG(LF_DBG_LIST, "overlap contains lock\n");
   return (OVERLAP_CONTAINS_LOCK);
  }
  if (start <= lf->lf_start &&
             (end == -1 ||
      (lf->lf_end != -1 && end >= lf->lf_end))) {
   LOCKF_DEBUG(LF_DBG_LIST, "lock contains overlap\n");
   return (OVERLAP_CONTAINED_BY_LOCK);
  }
  if ((lf->lf_start < start) &&
   ((lf->lf_end >= start) || (lf->lf_end == -1))) {
   LOCKF_DEBUG(LF_DBG_LIST, "overlap starts before lock\n");
   return (OVERLAP_STARTS_BEFORE_LOCK);
  }
  if ((lf->lf_start > start) &&
   (end != -1) &&
   ((lf->lf_end > end) || (lf->lf_end == -1))) {
   LOCKF_DEBUG(LF_DBG_LIST, "overlap ends after lock\n");
   return (OVERLAP_ENDS_AFTER_LOCK);
  }
  panic("lf_findoverlap: default");
 }
 return (OVERLAP_NONE);
}
