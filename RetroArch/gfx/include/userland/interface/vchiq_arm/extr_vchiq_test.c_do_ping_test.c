
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct test_params {int blocksize; int iters; scalar_t__ echo; scalar_t__ verify; void* magic; int client_message_quota; } ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_3__ {char* data; int size; } ;
typedef TYPE_1__ VCHIQ_ELEMENT_T ;


 void* MSG_ASYNC ;
 void* MSG_CONFIG ;
 void* MSG_ONEWAY ;
 void* MSG_SYNC ;
 int VCHIQ_BULK_MODE_BLOCKING ;
 int VCHIQ_BULK_MODE_NOCALLBACK ;
 int VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA ;
 int bulk_tx_received ;
 int free (char*) ;
 struct test_params g_params ;
 int g_server_reply ;
 char* malloc (int) ;
 int printf (char*,int,int,...) ;
 int vchiq_bulk_transmit (int ,char*,int,int ,int ) ;
 int vchiq_queue_bulk_transmit (int ,char*,int,int ) ;
 int vchiq_queue_message (int ,TYPE_1__*,int) ;
 int vchiq_set_service_option (int ,int ,int ) ;
 int vcos_event_wait (int *) ;
 scalar_t__ vcos_getmicrosecs () ;
 int vcos_max (int,int) ;
 int vcos_sleep (int) ;

__attribute__((used)) static void
do_ping_test(VCHIQ_SERVICE_HANDLE_T service, int size, int async, int oneway, int iters)
{
   uint32_t start, end;
   char *ping_buf = malloc(size + sizeof(struct test_params));
   struct test_params *params = (struct test_params *)ping_buf;
   VCHIQ_ELEMENT_T element;
   int i;

   element.data = ping_buf;


   *params = g_params;
   params->magic = MSG_CONFIG;
   params->blocksize = 0;
   element.size = sizeof(*params);
   vchiq_queue_message(service, &element, 1);
   vcos_event_wait(&g_server_reply);
   vchiq_set_service_option(service, VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA, params->client_message_quota);


   element.size = (size < 4) ? 4 : size;

   bulk_tx_received = -1;

   start = vcos_getmicrosecs();
   for (i = 0; i < iters; i++)
   {
      int j;
      for (j = 0; j < vcos_max(async, oneway); j++)
      {
         if (j < async)
         {
            params->magic = MSG_ASYNC;
            vchiq_queue_message(service, &element, 1);
         }
         if (j < oneway)
         {
            params->magic = MSG_ONEWAY;
            vchiq_queue_message(service, &element, 1);
         }
      }
      params->magic = MSG_SYNC;
      vchiq_queue_message(service, &element, 1);
      vcos_event_wait(&g_server_reply);
   }
   end = vcos_getmicrosecs();

   printf("ping (size %d, %d async, %d oneway) -> %fus\n", size, async, oneway, ((float)(end - start))/iters);

   vcos_sleep(20);

   if ((async == 0) && (oneway == 0))
   {
      *params = g_params;
      params->magic = MSG_CONFIG;
      params->blocksize = size ? size : 8;
      params->iters = iters;
      params->verify = 0;
      params->echo = 0;

      element.size = sizeof(*params);
      vchiq_queue_message(service, &element, 1);
      vcos_event_wait(&g_server_reply);

      vcos_sleep(30);

      start = vcos_getmicrosecs();
      for (i = 0; i < iters; i++)
      {
         vchiq_queue_bulk_transmit(service, ping_buf, params->blocksize, 0);
         vcos_event_wait(&g_server_reply);
      }
      end = vcos_getmicrosecs();

      printf("bulk (size %d, async) -> %fus\n", size, ((float)(end - start))/iters);

      vcos_sleep(40);
   }

   if (oneway == 0)
   {
      *params = g_params;
      params->magic = MSG_CONFIG;
      params->blocksize = size ? size : 8;
      params->iters = iters * (async + 1);
      params->verify = 0;
      params->echo = 0;

      element.size = sizeof(*params);
      vchiq_queue_message(service, &element, 1);
      vcos_event_wait(&g_server_reply);

      vcos_sleep(50);

      start = vcos_getmicrosecs();
      for (i = 0; i < iters; i++)
      {
         int j;
         for (j = 0; j < async; j++)
            vchiq_bulk_transmit(service, ping_buf, params->blocksize, 0, VCHIQ_BULK_MODE_NOCALLBACK);
         vchiq_bulk_transmit(service, ping_buf, params->blocksize, 0, VCHIQ_BULK_MODE_BLOCKING);
      }
      end = vcos_getmicrosecs();

      printf("bulk (size %d, %d async) -> %fus\n", size, async, ((float)(end - start))/iters);

      vcos_sleep(60);
   }

   free(ping_buf);

   bulk_tx_received = 0;
}
