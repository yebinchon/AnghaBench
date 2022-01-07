
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int mcache_obj_t ;
struct TYPE_3__ {scalar_t__ mca_contents; } ;
typedef TYPE_1__ mcache_audit_t ;
struct TYPE_4__ {TYPE_1__** cl_audit; } ;


 unsigned int MTOPG (void*) ;
 int VERIFY (int) ;
 unsigned int maxclaudit ;
 int mcache_audit_cache ;
 int mcache_free (int ,scalar_t__) ;
 int mcache_free_ext (int ,int *) ;
 int mcl_audit_con_cache ;
 TYPE_2__* mclaudit ;

__attribute__((used)) static void
mcl_audit_free(void *buf, unsigned int num)
{
 unsigned int i, ix;
 mcache_audit_t *mca, *mca_list;

 ix = MTOPG(buf);
 VERIFY(ix < maxclaudit);

 if (mclaudit[ix].cl_audit[0] != ((void*)0)) {
  mca_list = mclaudit[ix].cl_audit[0];
  for (i = 0; i < num; i++) {
   mca = mclaudit[ix].cl_audit[i];
   mclaudit[ix].cl_audit[i] = ((void*)0);
   if (mca->mca_contents)
    mcache_free(mcl_audit_con_cache,
        mca->mca_contents);
  }
  mcache_free_ext(mcache_audit_cache,
      (mcache_obj_t *)mca_list);
 }
}
