
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
struct fileproc {int f_flags; void* f_wset; } ;
typedef int f_wq ;


 int FP_INSELECT ;
 int FP_SELCONFLICT ;
 int WAITQ_SHOULD_LOCK ;
 int memcpy (struct waitq**,void**,int) ;
 int panic (char*,void**,struct fileproc*,struct waitq_set*) ;
 int select_conflict_queue ;
 int waitq_get_prepost_id (struct waitq*) ;
 int waitq_is_valid (struct waitq*) ;
 int waitq_link (int *,struct waitq_set*,int ,int *) ;

__attribute__((used)) static uint64_t sellinkfp(struct fileproc *fp, void **wq_data, struct waitq_set *wqset)
{
 struct waitq *f_wq = ((void*)0);

 if ((fp->f_flags & FP_INSELECT) != FP_INSELECT) {
  if (wq_data)
   panic("non-null data:%p on fp:%p not in select?!"
         "(wqset:%p)", wq_data, fp, wqset);
  return 0;
 }

 if ((fp->f_flags & FP_SELCONFLICT) == FP_SELCONFLICT) {
  waitq_link(&select_conflict_queue, wqset, WAITQ_SHOULD_LOCK, ((void*)0));
 }
 if (wq_data) {
  memcpy(&f_wq, wq_data, sizeof(f_wq));
  if (!waitq_is_valid(f_wq))
   f_wq = ((void*)0);
 }


 if (!fp->f_wset)
  fp->f_wset = (void *)wqset;


 return waitq_get_prepost_id(f_wq);
}
