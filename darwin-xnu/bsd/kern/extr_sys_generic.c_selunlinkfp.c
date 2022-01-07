
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct waitq_set {int dummy; } ;
struct fileproc {int f_flags; void* f_wset; } ;


 int FP_INSELECT ;
 int FP_SELCONFLICT ;
 int select_conflict_queue ;
 int waitq_set_is_valid (struct waitq_set*) ;
 int waitq_unlink (int *,struct waitq_set*) ;
 int waitq_unlink_by_prepost_id (int ,struct waitq_set*) ;

__attribute__((used)) static void selunlinkfp(struct fileproc *fp, uint64_t wqp_id, struct waitq_set *wqset)
{
 int valid_set = waitq_set_is_valid(wqset);
 int valid_q = !!wqp_id;
 if (valid_q && valid_set)
  waitq_unlink_by_prepost_id(wqp_id, wqset);


 if (!fp || !(fp->f_flags & (FP_INSELECT|FP_SELCONFLICT)))
  return;
 if (valid_set && (fp->f_flags & FP_SELCONFLICT))
  waitq_unlink(&select_conflict_queue, wqset);







 if (valid_set && fp->f_wset == (void *)wqset) {
  fp->f_flags &= ~FP_INSELECT;
  fp->f_wset = ((void*)0);
 }
}
