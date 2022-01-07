
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int running; void (* func ) (void*) ;int * thd; void* arg; int * cond; int mutex; } ;
typedef int LPTHREAD_START_ROUTINE ;


 int * CreateEvent (int *,int ,int ,int *) ;
 int * CreateThread (int *,int ,int ,TYPE_1__*,int ,int *) ;
 int FALSE ;
 int InitializeCriticalSection (int *) ;
 int TlsAlloc () ;
 int fprintf (int ,char*,unsigned int) ;
 int hnd_key ;
 int hnd_key_once ;
 int perror (char*) ;
 int stderr ;
 TYPE_1__* thread_handle ;
 scalar_t__ wrapper ;

int YabThreadStart(unsigned int id, void (*func)(void *), void *arg)
{
   if (!hnd_key_once)
   {
      hnd_key=TlsAlloc();
      hnd_key_once = 1;
   }

   if (thread_handle[id].running)
   {
      fprintf(stderr, "YabThreadStart: thread %u is already started!\n", id);
      return -1;
   }


   InitializeCriticalSection(&thread_handle[id].mutex);
   if ((thread_handle[id].cond = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0))) == ((void*)0))
   {
      perror("CreateEvent");
      return -1;
   }

   thread_handle[id].func = func;
   thread_handle[id].arg = arg;

   if ((thread_handle[id].thd = CreateThread(((void*)0), 0, (LPTHREAD_START_ROUTINE)wrapper, &thread_handle[id], 0, ((void*)0))) == ((void*)0))
   {
      perror("CreateThread");
      return -1;
   }

   thread_handle[id].running = 1;

   return 0;
}
