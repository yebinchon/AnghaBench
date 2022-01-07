
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;


 scalar_t__ DDI_FAILURE ;
 int DDI_PSEUDO ;
 int DDI_SUCCESS ;
 int DTRACE_PRIV_KERNEL ;
 int DTRACE_PRIV_USER ;
 int PROFILE_MAX_DEFAULT ;
 int S_IFCHR ;
 scalar_t__ ddi_create_minor_node (int *,char*,int ,int ,int ,int ) ;
 int ddi_remove_minor_node (int *,int *) ;
 scalar_t__ dtrace_register (char*,int *,int,int *,int *,int *,int *) ;
 int profile_attr ;
 int profile_id ;
 int profile_max ;
 int profile_pops ;

__attribute__((used)) static int
profile_attach(dev_info_t *devi)
{
 if (ddi_create_minor_node(devi, "profile", S_IFCHR, 0,
     DDI_PSEUDO, 0) == DDI_FAILURE ||
     dtrace_register("profile", &profile_attr,
     DTRACE_PRIV_KERNEL | DTRACE_PRIV_USER, ((void*)0),
     &profile_pops, ((void*)0), &profile_id) != 0) {
  ddi_remove_minor_node(devi, ((void*)0));
  return (DDI_FAILURE);
 }

 profile_max = PROFILE_MAX_DEFAULT;

 return (DDI_SUCCESS);
}
