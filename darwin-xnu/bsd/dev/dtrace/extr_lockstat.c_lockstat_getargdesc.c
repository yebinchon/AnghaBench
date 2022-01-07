
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* lsp_args; } ;
typedef TYPE_1__ lockstat_probe_t ;
typedef int dtrace_id_t ;
struct TYPE_5__ {char* dtargd_native; char* dtargd_xlate; int dtargd_ndx; } ;
typedef TYPE_2__ dtrace_argdesc_t ;


 int DTRACE_ARGNONE ;
 int DTRACE_ARGTYPELEN ;
 int strlcpy (char*,char const*,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
lockstat_getargdesc(void *arg, dtrace_id_t id, void *parg, dtrace_argdesc_t *desc)
{
#pragma unused(arg, id)
 lockstat_probe_t *probe = parg;
 const char* argdesc = probe->lsp_args;
 int narg = 0;

 desc->dtargd_native[0] = '\0';
 desc->dtargd_xlate[0] = '\0';

 while(argdesc[0] != '\0') {
  if (narg == desc->dtargd_ndx) {
   strlcpy(desc->dtargd_native, argdesc, DTRACE_ARGTYPELEN);
   return;
  }
  argdesc += strlen(argdesc) + 1;
  narg++;
 }

 desc->dtargd_ndx = DTRACE_ARGNONE;
}
