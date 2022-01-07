
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mcache_obj_t ;
typedef int mcache_audit_t ;
typedef int mbuf_class_t ;
struct TYPE_2__ {int ** cl_audit; } ;


 int BCLPAGEIDX (unsigned char*,int *) ;
 int CLPAGEIDX (unsigned char*,int *) ;
 int IS_P2ALIGNED (int *,int ) ;
 int MBPAGEIDX (unsigned char*,int *) ;




 int MIN (int ,int ) ;
 int MTOPG (int *) ;
 scalar_t__ NBCLPG ;
 scalar_t__ NCLPG ;
 scalar_t__ NMBPG ;
 int PAGE_SIZE ;
 unsigned char* PGTOM (int) ;
 int VERIFY (int) ;
 int m_maxsize (int) ;
 int maxclaudit ;
 TYPE_1__* mclaudit ;

__attribute__((used)) static mcache_audit_t *
mcl_audit_buf2mca(mbuf_class_t class, mcache_obj_t *mobj)
{
 mcache_audit_t *mca = ((void*)0);
 int ix = MTOPG(mobj), m_idx = 0;
 unsigned char *page_addr;

 VERIFY(ix < maxclaudit);
 VERIFY(IS_P2ALIGNED(mobj, MIN(m_maxsize(class), PAGE_SIZE)));

 page_addr = PGTOM(ix);

 switch (class) {
 case 128:







  m_idx = MBPAGEIDX(page_addr, mobj);
  VERIFY(m_idx < (int)NMBPG);
  mca = mclaudit[ix].cl_audit[m_idx];
  break;

 case 129:



  m_idx = CLPAGEIDX(page_addr, mobj);
  VERIFY(m_idx < (int)NCLPG);
  mca = mclaudit[ix].cl_audit[m_idx];
  break;

 case 130:
  m_idx = BCLPAGEIDX(page_addr, mobj);
  VERIFY(m_idx < (int)NBCLPG);
  mca = mclaudit[ix].cl_audit[m_idx];
  break;
 case 131:



  mca = mclaudit[ix].cl_audit[0];
  break;

 default:
  VERIFY(0);

 }

 return (mca);
}
