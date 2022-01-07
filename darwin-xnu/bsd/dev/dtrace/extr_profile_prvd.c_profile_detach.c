
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;
typedef int ddi_detach_cmd_t ;



 int DDI_FAILURE ;
 int DDI_SUCCESS ;

 int ddi_remove_minor_node (int *,int *) ;
 scalar_t__ dtrace_unregister (int ) ;
 int profile_id ;

__attribute__((used)) static int
profile_detach(dev_info_t *devi, ddi_detach_cmd_t cmd)
{
 switch (cmd) {
 case 129:
  break;
 case 128:
  return (DDI_SUCCESS);
 default:
  return (DDI_FAILURE);
 }

 if (dtrace_unregister(profile_id) != 0)
  return (DDI_FAILURE);

 ddi_remove_minor_node(devi, ((void*)0));
 return (DDI_SUCCESS);
}
