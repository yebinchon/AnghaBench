
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int peek_size; int fd; scalar_t__ peek_buf; int handle; } ;
typedef TYPE_1__ VCHI_SERVICE_T ;
typedef scalar_t__ VCHI_FLAGS_T ;
struct TYPE_6__ {int blocking; scalar_t__ buf; int bufsize; int handle; } ;
typedef TYPE_2__ VCHIQ_DEQUEUE_MESSAGE_T ;


 int MSGBUF_SIZE ;
 int RETRY (int,int ) ;
 int VCHIQ_IOC_DEQUEUE_MESSAGE ;
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ;
 scalar_t__ VCHI_FLAGS_NONE ;
 scalar_t__ alloc_msgbuf () ;
 int ioctl (int ,int ,TYPE_2__*) ;
 int vcos_assert (int) ;

__attribute__((used)) static int
fill_peek_buf(VCHI_SERVICE_T *service,
   VCHI_FLAGS_T flags)
{
   VCHIQ_DEQUEUE_MESSAGE_T args;
   int ret = 0;

   vcos_assert(flags == VCHI_FLAGS_NONE || flags == VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE);

   if (service->peek_size < 0)
   {
      if (!service->peek_buf)
         service->peek_buf = alloc_msgbuf();

      if (service->peek_buf)
      {
         args.handle = service->handle;
         args.blocking = (flags == VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE);
         args.bufsize = MSGBUF_SIZE;
         args.buf = service->peek_buf;

         RETRY(ret, ioctl(service->fd, VCHIQ_IOC_DEQUEUE_MESSAGE, &args));

         if (ret >= 0)
         {
            service->peek_size = ret;
            ret = 0;
         }
         else
         {
            ret = -1;
         }
      }
      else
      {
         ret = -1;
      }
   }

   return ret;
}
