
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;


 int CTL_DATA_EOR ;
 int EINVAL ;
 int ctl_enqueuedata (int *,scalar_t__,int *,size_t,int ) ;
 int * netagent_kctlref ;

__attribute__((used)) static int
netagent_send_ctl_data(u_int32_t control_unit, u_int8_t *buffer, size_t buffer_size)
{
 if (netagent_kctlref == ((void*)0) || control_unit == 0 || buffer == ((void*)0) || buffer_size == 0) {
  return (EINVAL);
 }

 return ctl_enqueuedata(netagent_kctlref, control_unit, buffer, buffer_size, CTL_DATA_EOR);
}
