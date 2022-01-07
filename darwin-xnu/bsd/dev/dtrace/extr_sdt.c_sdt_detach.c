
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sdtp_id; int * sdtp_name; } ;
typedef TYPE_1__ sdt_provider_t ;
typedef int sdt_probe_t ;
typedef int dev_info_t ;
typedef int ddi_detach_cmd_t ;



 int DDI_FAILURE ;
 int DDI_SUCCESS ;

 scalar_t__ DTRACE_PROVNONE ;
 int dtrace_invop_remove (int ) ;
 scalar_t__ dtrace_unregister (scalar_t__) ;
 int kmem_free (int ,int) ;
 int sdt_invop ;
 int sdt_probetab ;
 int sdt_probetab_size ;
 TYPE_1__* sdt_providers ;

__attribute__((used)) static int
sdt_detach(dev_info_t *dip, ddi_detach_cmd_t cmd)
{
 sdt_provider_t *prov;

 switch (cmd) {
 case 129:
  break;

 case 128:
  return (DDI_SUCCESS);

 default:
  return (DDI_FAILURE);
 }

 for (prov = sdt_providers; prov->sdtp_name != ((void*)0); prov++) {
  if (prov->sdtp_id != DTRACE_PROVNONE) {
   if (dtrace_unregister(prov->sdtp_id) != 0)
    return (DDI_FAILURE);

   prov->sdtp_id = DTRACE_PROVNONE;
  }
 }

 dtrace_invop_remove(sdt_invop);
 kmem_free(sdt_probetab, sdt_probetab_size * sizeof (sdt_probe_t *));

 return (DDI_SUCCESS);
}
