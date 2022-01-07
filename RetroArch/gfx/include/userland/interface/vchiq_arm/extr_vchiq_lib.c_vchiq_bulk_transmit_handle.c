
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VCHI_MEM_HANDLE_T ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_BULK_MODE_T ;


 scalar_t__ VCHI_MEM_HANDLE_INVALID ;
 int vchiq_bulk_transmit (int ,void const*,int,void*,int ) ;
 int vcos_assert (int) ;

VCHIQ_STATUS_T
vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T handle,
   VCHI_MEM_HANDLE_T memhandle,
   const void *offset,
   int size,
   void *userdata,
   VCHIQ_BULK_MODE_T mode)
{
   vcos_assert(memhandle == VCHI_MEM_HANDLE_INVALID);

   return vchiq_bulk_transmit(handle, offset, size, userdata, mode);
}
