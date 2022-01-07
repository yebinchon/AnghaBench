
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int KERN_ABORTED ;
 int KERN_FAILURE ;
 int KERN_OPERATION_TIMED_OUT ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;




 int panic (char*) ;

kern_return_t
semaphore_convert_wait_result(int wait_result)
{
 switch (wait_result) {
 case 131:
  return KERN_SUCCESS;

 case 128:
  return KERN_OPERATION_TIMED_OUT;

 case 130:
  return KERN_ABORTED;

 case 129:
  return KERN_TERMINATED;

 default:
  panic("semaphore_block\n");
  return KERN_FAILURE;
 }
}
