
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;


 scalar_t__ DDI_FAILURE ;
 int DDI_PSEUDO ;
 int DDI_SUCCESS ;
 int DTRACE_PRIV_USER ;
 int S_IFCHR ;
 scalar_t__ ddi_create_minor_node (int *,char*,int ,int ,int ,int ) ;
 int ddi_remove_minor_node (int *,int *) ;
 int dtrace_probe ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;
 int membar_enter () ;
 int systrace_attr ;
 int systrace_id ;
 int systrace_pops ;
 void* systrace_probe ;
 void* systrace_stub ;

__attribute__((used)) static int
systrace_attach(dev_info_t *devi)
{
 systrace_probe = (void*)&dtrace_probe;
 membar_enter();

 if (ddi_create_minor_node(devi, "systrace", S_IFCHR, 0,
     DDI_PSEUDO, 0) == DDI_FAILURE ||
     dtrace_register("syscall", &systrace_attr, DTRACE_PRIV_USER, ((void*)0),
     &systrace_pops, ((void*)0), &systrace_id) != 0) {
  systrace_probe = systrace_stub;
  ddi_remove_minor_node(devi, ((void*)0));
  return (DDI_FAILURE);
 }

 return (DDI_SUCCESS);
}
