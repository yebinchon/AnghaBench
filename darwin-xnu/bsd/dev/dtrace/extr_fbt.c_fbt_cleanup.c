
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fbt_probe_t ;
typedef int dev_info_t ;


 int ddi_remove_minor_node (int *,int *) ;
 int dtrace_invop_remove (int ) ;
 int fbt_invop ;
 int * fbt_probetab ;
 scalar_t__ fbt_probetab_mask ;
 int fbt_probetab_size ;
 int kmem_free (int *,int) ;

__attribute__((used)) static void
fbt_cleanup(dev_info_t *devi)
{
 dtrace_invop_remove(fbt_invop);
 ddi_remove_minor_node(devi, ((void*)0));
 kmem_free(fbt_probetab, fbt_probetab_size * sizeof (fbt_probe_t *));
 fbt_probetab = ((void*)0);
 fbt_probetab_mask = 0;
}
