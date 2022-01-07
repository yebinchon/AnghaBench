
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prof_kind; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int dtrace_id_t ;
struct TYPE_5__ {int dtargd_ndx; int dtargd_native; } ;
typedef TYPE_2__ dtrace_argdesc_t ;


 int DTRACE_ARGNONE ;
 int DTRACE_ARGTYPELEN ;
 int PROF_PROFILE ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static void
profile_getargdesc(void *arg, dtrace_id_t id, void *parg, dtrace_argdesc_t *desc)
{
#pragma unused(arg, id)
 profile_probe_t *prof = parg;
 const char *argdesc = ((void*)0);
 switch (desc->dtargd_ndx) {
  case 0:
   argdesc = "void*";
   break;
  case 1:
   argdesc = "user_addr_t";
   break;
  case 2:
   if (prof->prof_kind == PROF_PROFILE) {
    argdesc = "hrtime_t";
   }
   break;
 }
 if (argdesc) {
  strlcpy(desc->dtargd_native, argdesc, DTRACE_ARGTYPELEN);
 }
 else {
  desc->dtargd_ndx = DTRACE_ARGNONE;
 }
}
