
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptsub {scalar_t__ mpts_refcnt; int mpts_flags; int * mpts_src; int * mpts_socket; int * mpts_mpte; } ;


 int FREE (int *,int ) ;
 int MPTSF_ATTACHED ;
 int M_SONAME ;
 int VERIFY (int) ;
 int mptsub_zone ;
 int zfree (int ,struct mptsub*) ;

__attribute__((used)) static void
mptcp_subflow_free(struct mptsub *mpts)
{
 VERIFY(mpts->mpts_refcnt == 0);
 VERIFY(!(mpts->mpts_flags & MPTSF_ATTACHED));
 VERIFY(mpts->mpts_mpte == ((void*)0));
 VERIFY(mpts->mpts_socket == ((void*)0));

 if (mpts->mpts_src != ((void*)0)) {
  FREE(mpts->mpts_src, M_SONAME);
  mpts->mpts_src = ((void*)0);
 }

 zfree(mptsub_zone, mpts);
}
