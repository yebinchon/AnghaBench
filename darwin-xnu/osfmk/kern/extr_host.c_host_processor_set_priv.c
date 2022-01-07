
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ processor_set_t ;
typedef int kern_return_t ;
typedef scalar_t__ host_priv_t ;


 scalar_t__ HOST_PRIV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ PROCESSOR_SET_NULL ;

kern_return_t
host_processor_set_priv(host_priv_t host_priv, processor_set_t pset_name, processor_set_t * pset)
{
 if (host_priv == HOST_PRIV_NULL || pset_name == PROCESSOR_SET_NULL) {
  *pset = PROCESSOR_SET_NULL;

  return (KERN_INVALID_ARGUMENT);
 }

 *pset = pset_name;

 return (KERN_SUCCESS);
}
