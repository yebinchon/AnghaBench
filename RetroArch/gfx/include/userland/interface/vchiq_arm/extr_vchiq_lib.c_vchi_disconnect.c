
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef scalar_t__ VCHI_INSTANCE_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_INSTANCE_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ vchiq_shutdown (int ) ;

int32_t
vchi_disconnect( VCHI_INSTANCE_T instance_handle )
{
   VCHIQ_STATUS_T status;

   status = vchiq_shutdown((VCHIQ_INSTANCE_T)instance_handle);

   return (status == VCHIQ_SUCCESS) ? 0 : -1;
}
