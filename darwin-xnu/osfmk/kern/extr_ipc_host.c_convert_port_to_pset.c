
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor_set_t ;
typedef int ipc_port_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ IP_VALID (int ) ;
 int PROCESSOR_SET_NULL ;
 int ip_lock (int ) ;
 scalar_t__ ref_pset_port_locked (int ,scalar_t__,int *) ;

processor_set_t
convert_port_to_pset(
 ipc_port_t port)
{
 boolean_t r;
 processor_set_t pset = PROCESSOR_SET_NULL;

 r = FALSE;
 while (!r && IP_VALID(port)) {
  ip_lock(port);
  r = ref_pset_port_locked(port, FALSE, &pset);

 }
 return pset;
}
