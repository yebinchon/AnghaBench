
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sdtp_name; int sdtp_id; int sdtp_attr; } ;
typedef TYPE_1__ sdt_provider_t ;
typedef int sdt_probe_t ;
typedef int dev_info_t ;


 int CE_NOTE ;
 int CE_WARN ;
 scalar_t__ DDI_FAILURE ;
 int DDI_PSEUDO ;
 int DDI_SUCCESS ;
 int DTRACE_PRIV_KERNEL ;
 int KM_SLEEP ;
 int SDT_PROBETAB_SIZE ;
 int S_IFCHR ;
 int cmn_err (int ,char*,...) ;
 scalar_t__ ddi_create_minor_node (int *,char*,int ,int ,int ,int ) ;
 int ddi_remove_minor_node (int *,int *) ;
 int dtrace_invop_add (int ) ;
 scalar_t__ dtrace_register (int *,int ,int ,int *,int *,TYPE_1__*,int *) ;
 int kmem_zalloc (int,int ) ;
 int sdt_invop ;
 int sdt_pops ;
 int sdt_probetab ;
 int sdt_probetab_mask ;
 int sdt_probetab_size ;
 TYPE_1__* sdt_providers ;

__attribute__((used)) static int
sdt_attach(dev_info_t *devi)
{
 sdt_provider_t *prov;

 if (ddi_create_minor_node(devi, "sdt", S_IFCHR,
     0, DDI_PSEUDO, 0) == DDI_FAILURE) {
  cmn_err(CE_NOTE, "/dev/sdt couldn't create minor node");
  ddi_remove_minor_node(devi, ((void*)0));
  return (DDI_FAILURE);
 }

 if (sdt_probetab_size == 0)
  sdt_probetab_size = SDT_PROBETAB_SIZE;

 sdt_probetab_mask = sdt_probetab_size - 1;
 sdt_probetab =
     kmem_zalloc(sdt_probetab_size * sizeof (sdt_probe_t *), KM_SLEEP);
 dtrace_invop_add(sdt_invop);

 for (prov = sdt_providers; prov->sdtp_name != ((void*)0); prov++) {
  if (dtrace_register(prov->sdtp_name, prov->sdtp_attr,
      DTRACE_PRIV_KERNEL, ((void*)0),
      &sdt_pops, prov, &prov->sdtp_id) != 0) {
   cmn_err(CE_WARN, "failed to register sdt provider %s",
       prov->sdtp_name);
  }
 }

 return (DDI_SUCCESS);
}
