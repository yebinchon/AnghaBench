
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseminfo {int psem_semobject; } ;
typedef int kern_return_t ;


 int EINTR ;
 int EINVAL ;





 int kernel_task ;
 int mac_posixsem_label_destroy (struct pseminfo*) ;
 int semaphore_destroy (int ,int ) ;

__attribute__((used)) static int
psem_delete(struct pseminfo * pinfo)
{
 kern_return_t kret;

 kret = semaphore_destroy(kernel_task, pinfo->psem_semobject);




 switch (kret) {
 case 131:
 case 129:
  return (EINVAL);
 case 132:
 case 130:
  return (EINTR);
 case 128:
  return(0);
 default:
  return (EINVAL);
 }
}
