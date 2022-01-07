
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;


 scalar_t__ DDI_FAILURE ;
 int DDI_PSEUDO ;
 int DDI_SUCCESS ;
 int DTRACE_PRIV_KERNEL ;
 int S_IFCHR ;
 scalar_t__ ddi_create_minor_node (int *,char*,int ,int ,int ,int ) ;
 int ddi_remove_minor_node (int *,int *) ;
 int dtrace_probe ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;
 int lockstat_attr ;
 int lockstat_id ;
 int lockstat_pops ;
 int lockstat_probe ;
 int membar_producer () ;

__attribute__((used)) static int
lockstat_attach(dev_info_t *devi)
{
 if (ddi_create_minor_node(devi, "lockstat", S_IFCHR, 0,
     DDI_PSEUDO, 0) == DDI_FAILURE ||
     dtrace_register("lockstat", &lockstat_attr, DTRACE_PRIV_KERNEL,
     ((void*)0), &lockstat_pops, ((void*)0), &lockstat_id) != 0) {
  ddi_remove_minor_node(devi, ((void*)0));
  return (DDI_FAILURE);
 }

 lockstat_probe = dtrace_probe;
 membar_producer();

 return (DDI_SUCCESS);
}
