
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf {scalar_t__ lf_type; scalar_t__ lf_boosted; int lf_end; int lf_start; struct lockf* lf_next; struct lockf** lf_head; } ;
typedef int overlap_t ;


 int ENOLCK ;
 int FALSE ;
 int FREE (struct lockf*,int ) ;
 scalar_t__ F_UNLCK ;
 scalar_t__ LF_BOOSTED ;
 int LF_DBG_LOCKOP ;
 int M_LOCKF ;
 struct lockf* NOLOCKF ;






 int SELF ;
 int lf_drop_assertion (struct lockf*) ;
 int lf_findoverlap (struct lockf*,struct lockf*,int ,struct lockf***,struct lockf**) ;
 int lf_print (char*,struct lockf*) ;
 int lf_printlist (char*,struct lockf*) ;
 int lf_split (struct lockf*,struct lockf*) ;
 int lf_wakelock (struct lockf*,int ) ;
 int lockf_debug ;
 int panic (char*) ;

__attribute__((used)) static int
lf_clearlock(struct lockf *unlock)
{
 struct lockf **head = unlock->lf_head;
 struct lockf *lf = *head;
 struct lockf *overlap, **prev;
 overlap_t ovcase;

 if (lf == NOLOCKF)
  return (0);






 prev = head;
 while ((ovcase = lf_findoverlap(lf, unlock, SELF, &prev, &overlap)) != 129) {



         lf_wakelock(overlap, FALSE);






  switch (ovcase) {
  case 129:
   break;

  case 130:
   *prev = overlap->lf_next;
   FREE(overlap, M_LOCKF);
   break;

  case 132:
   if (overlap->lf_start == unlock->lf_start) {
    overlap->lf_start = unlock->lf_end + 1;
    break;
   }




   if (lf_split(overlap, unlock))
    return (ENOLCK);
   overlap->lf_next = unlock->lf_next;
   break;

  case 133:
   *prev = overlap->lf_next;
   lf = overlap->lf_next;
   FREE(overlap, M_LOCKF);
   continue;

  case 128:
   overlap->lf_end = unlock->lf_start - 1;
   prev = &overlap->lf_next;
   lf = overlap->lf_next;
   continue;

  case 131:
   overlap->lf_start = unlock->lf_end + 1;
   break;
  }
  break;
 }




 return (0);
}
