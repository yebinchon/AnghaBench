
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sdp_name; TYPE_1__* sdp_provider; } ;
typedef TYPE_2__ sdt_probe_t ;
struct TYPE_9__ {scalar_t__ sda_ndx; int sda_mapping; int * sda_xlate; int * sda_native; int * sda_name; int * sda_provider; } ;
typedef TYPE_3__ sdt_argdesc_t ;
typedef int dtrace_id_t ;
struct TYPE_10__ {char* dtargd_native; char* dtargd_xlate; scalar_t__ dtargd_ndx; int dtargd_mapping; } ;
typedef TYPE_4__ dtrace_argdesc_t ;
struct TYPE_7__ {int sdtp_name; } ;


 scalar_t__ DTRACE_ARGNONE ;
 int DTRACE_ARGTYPELEN ;
 TYPE_3__* sdt_args ;
 int strlcpy (char*,int *,int ) ;
 scalar_t__ strlen (int *) ;
 scalar_t__ strncmp (int ,int *,scalar_t__) ;

void
sdt_getargdesc(void *arg, dtrace_id_t id, void *parg, dtrace_argdesc_t *desc)
{
#pragma unused(arg, id)
 sdt_probe_t *sdp = parg;
 int i;

 desc->dtargd_native[0] = '\0';
 desc->dtargd_xlate[0] = '\0';

 for (i = 0; sdt_args[i].sda_provider != ((void*)0); i++) {
  sdt_argdesc_t *a = &sdt_args[i];

  if (strncmp(sdp->sdp_provider->sdtp_name, a->sda_provider, strlen(a->sda_provider) + 1) != 0)
   continue;

  if (a->sda_name != ((void*)0) &&
      strncmp(sdp->sdp_name, a->sda_name, strlen(a->sda_name) + 1) != 0)
   continue;

  if (desc->dtargd_ndx != a->sda_ndx)
   continue;

  if (a->sda_native != ((void*)0))
   (void) strlcpy(desc->dtargd_native, a->sda_native, DTRACE_ARGTYPELEN);

  if (a->sda_xlate != ((void*)0))
   (void) strlcpy(desc->dtargd_xlate, a->sda_xlate, DTRACE_ARGTYPELEN);

  desc->dtargd_mapping = a->sda_mapping;
  return;
 }

 desc->dtargd_ndx = DTRACE_ARGNONE;
}
