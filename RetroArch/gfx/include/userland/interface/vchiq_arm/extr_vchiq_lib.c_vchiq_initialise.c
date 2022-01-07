
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_INSTANCE_T ;


 int vchiq_initialise_fd (int *,int) ;

VCHIQ_STATUS_T
vchiq_initialise(VCHIQ_INSTANCE_T *pinstance)
{
   return vchiq_initialise_fd(pinstance, -1);
}
