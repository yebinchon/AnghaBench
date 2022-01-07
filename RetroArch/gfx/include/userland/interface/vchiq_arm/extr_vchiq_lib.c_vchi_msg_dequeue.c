
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int32_t ;
struct TYPE_5__ {scalar_t__ peek_size; int fd; int handle; int peek_buf; } ;
typedef TYPE_1__ VCHI_SERVICE_T ;
typedef int VCHI_SERVICE_HANDLE_T ;
typedef scalar_t__ VCHI_FLAGS_T ;
struct TYPE_6__ {int blocking; void* buf; scalar_t__ bufsize; int handle; } ;
typedef TYPE_2__ VCHIQ_DEQUEUE_MESSAGE_T ;


 scalar_t__ EWOULDBLOCK ;
 int RETRY (int,int ) ;
 int VCHIQ_ERROR ;
 int VCHIQ_IOC_DEQUEUE_MESSAGE ;
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 scalar_t__ VCHI_FLAGS_NONE ;
 scalar_t__ errno ;
 TYPE_1__* find_service_by_handle (int ) ;
 int fprintf (int ,char*,int,scalar_t__) ;
 int ioctl (int ,int ,TYPE_2__*) ;
 int memcpy (void*,int ,scalar_t__) ;
 int stderr ;
 int vcos_assert (int) ;
 int vcos_log_error (char*) ;

int32_t
vchi_msg_dequeue( VCHI_SERVICE_HANDLE_T handle,
   void *data,
   uint32_t max_data_size_to_read,
   uint32_t *actual_msg_size,
   VCHI_FLAGS_T flags )
{
   VCHI_SERVICE_T *service = find_service_by_handle(handle);
   VCHIQ_DEQUEUE_MESSAGE_T args;
   int ret;

   vcos_assert(flags == VCHI_FLAGS_NONE || flags == VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE);

   if (!service)
      return VCHIQ_ERROR;

   if (service->peek_size >= 0)
   {
      vcos_log_error("vchi_msg_dequeue -> using peek buffer\n");
      if ((uint32_t)service->peek_size <= max_data_size_to_read)
      {
         memcpy(data, service->peek_buf, service->peek_size);
         *actual_msg_size = service->peek_size;

         service->peek_size = -1;
         ret = 0;
      }
      else
      {
         ret = -1;
      }
   }
   else
   {
      args.handle = service->handle;
      args.blocking = (flags == VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE);
      args.bufsize = max_data_size_to_read;
      args.buf = data;
      RETRY(ret, ioctl(service->fd, VCHIQ_IOC_DEQUEUE_MESSAGE, &args));
      if (ret >= 0)
      {
         *actual_msg_size = ret;
         ret = 0;
      }
   }

   if ((ret < 0) && (errno != EWOULDBLOCK))
      fprintf(stderr, "vchi_msg_dequeue -> %d(%d)\n", ret, errno);

   return ret;
}
