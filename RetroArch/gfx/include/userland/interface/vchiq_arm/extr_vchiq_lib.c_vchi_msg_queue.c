
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_6__ {int fd; int handle; } ;
typedef TYPE_1__ VCHI_SERVICE_T ;
typedef int VCHI_SERVICE_HANDLE_T ;
typedef scalar_t__ VCHI_FLAGS_T ;
struct TYPE_7__ {int count; TYPE_3__* elements; int handle; } ;
typedef TYPE_2__ VCHIQ_QUEUE_MESSAGE_T ;
struct TYPE_8__ {void const* member_0; int member_1; } ;
typedef TYPE_3__ VCHIQ_ELEMENT_T ;


 int RETRY (int,int ) ;
 int VCHIQ_ERROR ;
 int VCHIQ_IOC_QUEUE_MESSAGE ;
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_QUEUED ;
 TYPE_1__* find_service_by_handle (int ) ;
 int ioctl (int ,int ,TYPE_2__*) ;
 int vcos_assert (int) ;
 int vcos_unused (void*) ;

int32_t
vchi_msg_queue( VCHI_SERVICE_HANDLE_T handle,
   const void * data,
   uint32_t data_size,
   VCHI_FLAGS_T flags,
   void * msg_handle )
{
   VCHI_SERVICE_T *service = find_service_by_handle(handle);
   VCHIQ_QUEUE_MESSAGE_T args;
   VCHIQ_ELEMENT_T element = {data, data_size};
   int ret;

   vcos_unused(msg_handle);
   vcos_assert(flags == VCHI_FLAGS_BLOCK_UNTIL_QUEUED);

   if (!service)
      return VCHIQ_ERROR;

   args.handle = service->handle;
   args.elements = &element;
   args.count = 1;
   RETRY(ret, ioctl(service->fd, VCHIQ_IOC_QUEUE_MESSAGE, &args));

   return ret;
}
