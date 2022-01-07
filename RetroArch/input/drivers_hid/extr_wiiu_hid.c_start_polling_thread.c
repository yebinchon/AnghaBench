
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* polling_thread_stack; void* polling_thread; } ;
typedef TYPE_1__ wiiu_hid_t ;
typedef int int32_t ;
typedef int OSThreadAttributes ;
typedef void OSThread ;
typedef int BOOL ;


 int OSCreateThread (void*,int ,int,char*,void*,int,int,int ) ;
 int OSResumeThread (void*) ;
 int OSSetThreadCleanupCallback (void*,int ) ;
 int OS_THREAD_ATTRIB_AFFINITY_CPU2 ;
 int RARCH_LOG (char*) ;
 void* alloc_zeroed (int,int) ;
 int free (void*) ;
 void* new_thread () ;
 int wiiu_hid_polling_thread ;
 int wiiu_hid_polling_thread_cleanup ;

__attribute__((used)) static void start_polling_thread(wiiu_hid_t *hid)
{
   OSThreadAttributes attributes = OS_THREAD_ATTRIB_AFFINITY_CPU2;
   BOOL result = 0;
   int32_t stack_size = 0x8000;
   int32_t priority = 10;
   OSThread *thread = new_thread();
   void *stack = alloc_zeroed(16, stack_size);

   RARCH_LOG("[hid]: starting polling thread.\n");

   if (!thread || !stack)
   {
      RARCH_LOG("[hid]: allocation failed, aborting thread start.\n");
      goto error;
   }

   if (!OSCreateThread(thread,
            wiiu_hid_polling_thread,
            1, (char *)hid,
            stack+stack_size, stack_size,
            priority,
            attributes))
   {
      RARCH_LOG("[hid]: OSCreateThread failed.\n");
      goto error;
   }

   OSSetThreadCleanupCallback(thread, wiiu_hid_polling_thread_cleanup);

   hid->polling_thread = thread;
   hid->polling_thread_stack = stack;
   OSResumeThread(thread);
   return;

error:
   if (thread)
      free(thread);
   if (stack)
      free(stack);

   return;
}
