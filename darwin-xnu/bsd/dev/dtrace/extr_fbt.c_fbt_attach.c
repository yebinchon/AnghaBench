
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fbt_probe_t ;
typedef int dev_info_t ;


 scalar_t__ DDI_FAILURE ;
 int DDI_PSEUDO ;
 int DDI_SUCCESS ;
 int DTRACE_PRIV_KERNEL ;
 int FBT_PROBETAB_SIZE ;
 int KM_SLEEP ;
 int S_IFCHR ;
 scalar_t__ ddi_create_minor_node (int *,char*,int ,int ,int ,int ) ;
 int dtrace_invop_add (int ) ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;
 int fbt_attr ;
 int fbt_cleanup (int *) ;
 int fbt_id ;
 int fbt_invop ;
 int fbt_pops ;
 int fbt_probetab ;
 int fbt_probetab_mask ;
 int fbt_probetab_size ;
 int kmem_zalloc (int,int ) ;

__attribute__((used)) static int
fbt_attach(dev_info_t *devi)
{
 if (fbt_probetab_size == 0)
  fbt_probetab_size = FBT_PROBETAB_SIZE;

 fbt_probetab_mask = fbt_probetab_size - 1;
 fbt_probetab =
     kmem_zalloc(fbt_probetab_size * sizeof (fbt_probe_t *), KM_SLEEP);

 dtrace_invop_add(fbt_invop);

 if (ddi_create_minor_node(devi, "fbt", S_IFCHR, 0,
     DDI_PSEUDO, 0) == DDI_FAILURE ||
     dtrace_register("fbt", &fbt_attr, DTRACE_PRIV_KERNEL, ((void*)0),
     &fbt_pops, ((void*)0), &fbt_id) != 0) {
  fbt_cleanup(devi);
  return (DDI_FAILURE);
 }

 return (DDI_SUCCESS);
}
