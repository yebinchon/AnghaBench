
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; scalar_t__ device; scalar_t__ client; scalar_t__ renderer; int write_event; } ;
typedef TYPE_1__ wasapi_t ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int GetLastError () ;
 int IFACE_RELEASE (scalar_t__) ;
 int RARCH_ERR (char*,int ) ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int _IAudioClient_Stop (scalar_t__) ;
 int fifo_free (scalar_t__) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void wasapi_free(void *wh)
{
   DWORD ir;
   wasapi_t *w = (wasapi_t*)wh;
   HANDLE write_event = w->write_event;

   IFACE_RELEASE(w->renderer);
   if (w->client)
      _IAudioClient_Stop(w->client);
   IFACE_RELEASE(w->client);
   IFACE_RELEASE(w->device);
   if (w->buffer)
      fifo_free(w->buffer);
   free(w);

   ir = WaitForSingleObject(write_event, 20);
   if (ir == WAIT_FAILED)
   {
      RARCH_ERR("[WASAPI]: WaitForSingleObject failed with error %d.\n", GetLastError());
   }


   if (!(ir == WAIT_OBJECT_0))
      return;

   CloseHandle(write_event);
}
