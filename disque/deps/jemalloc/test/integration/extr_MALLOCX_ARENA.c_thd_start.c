
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mib ;
typedef int dss_precs ;
typedef int arena_ind ;


 int EFAULT ;
 int MALLOCX_ARENA (unsigned int) ;
 int assert_d_eq (int ,int,char*) ;
 int assert_ptr_not_null (void*,char*) ;
 int dallocx (void*,int ) ;
 scalar_t__ have_dss ;
 int mallctl (char*,unsigned int*,size_t*,int *,int ) ;
 int mallctlbymib (size_t*,size_t,int *,int *,void*,int) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;
 void* mallocx (int,int ) ;

void *
thd_start(void *arg)
{
 unsigned thread_ind = (unsigned)(uintptr_t)arg;
 unsigned arena_ind;
 void *p;
 size_t sz;

 sz = sizeof(arena_ind);
 assert_d_eq(mallctl("arenas.extend", &arena_ind, &sz, ((void*)0), 0), 0,
     "Error in arenas.extend");

 if (thread_ind % 4 != 3) {
  size_t mib[3];
  size_t miblen = sizeof(mib) / sizeof(size_t);
  const char *dss_precs[] = {"disabled", "primary", "secondary"};
  unsigned prec_ind = thread_ind %
      (sizeof(dss_precs)/sizeof(char*));
  const char *dss = dss_precs[prec_ind];
  int expected_err = (have_dss || prec_ind == 0) ? 0 : EFAULT;
  assert_d_eq(mallctlnametomib("arena.0.dss", mib, &miblen), 0,
      "Error in mallctlnametomib()");
  mib[1] = arena_ind;
  assert_d_eq(mallctlbymib(mib, miblen, ((void*)0), ((void*)0), (void *)&dss,
      sizeof(const char *)), expected_err,
      "Error in mallctlbymib()");
 }

 p = mallocx(1, MALLOCX_ARENA(arena_ind));
 assert_ptr_not_null(p, "Unexpected mallocx() error");
 dallocx(p, 0);

 return (((void*)0));
}
