
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running; int client; } ;
typedef TYPE_1__ wasapi_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int _IAudioClient_Stop (int ) ;

__attribute__((used)) static bool wasapi_stop(void *wh)
{
   wasapi_t *w = (wasapi_t*)wh;
   HRESULT hr = _IAudioClient_Stop(w->client);
   if (FAILED(hr))
      return !w->running;

   w->running = 0;

   return 1;
}
