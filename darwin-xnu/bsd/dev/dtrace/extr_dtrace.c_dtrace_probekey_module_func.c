
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_probekey_f ;
struct TYPE_3__ {char* dtpr_mod; } ;
typedef TYPE_1__ dtrace_probe_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_bymod ;
 int * dtrace_hash_lookup (int ,TYPE_1__*) ;
 int dtrace_lock ;
 int dtrace_match_module ;
 int dtrace_match_string ;
 int * dtrace_probekey_func (char const*) ;

__attribute__((used)) static dtrace_probekey_f *
dtrace_probekey_module_func(const char *p)
{
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 dtrace_probekey_f *f = dtrace_probekey_func(p);
 if (f == &dtrace_match_string) {
  dtrace_probe_t template = {
   .dtpr_mod = (char *)(uintptr_t)p,
  };
  if (dtrace_hash_lookup(dtrace_bymod, &template) == ((void*)0)) {
   return (&dtrace_match_module);
  }
  return (&dtrace_match_string);
 }
 return f;
}
