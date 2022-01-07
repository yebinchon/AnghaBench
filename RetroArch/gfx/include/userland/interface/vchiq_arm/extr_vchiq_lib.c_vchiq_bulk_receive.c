
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_BULK_MODE_T ;


 int VCHI_MEM_HANDLE_INVALID ;
 int vchiq_bulk_receive_handle (int ,int ,void*,int,void*,int ,int *) ;

VCHIQ_STATUS_T
vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle,
   void *data,
   int size,
   void *userdata,
   VCHIQ_BULK_MODE_T mode)
{
   return vchiq_bulk_receive_handle(handle, VCHI_MEM_HANDLE_INVALID, data, size, userdata, mode, ((void*)0));
}
