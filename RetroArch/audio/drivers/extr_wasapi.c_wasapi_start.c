
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running; int client; } ;
typedef TYPE_1__ wasapi_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ AUDCLNT_E_NOT_STOPPED ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ _IAudioClient_Start (int ) ;

__attribute__((used)) static bool wasapi_start(void *wh, bool u)
{
   wasapi_t *w = (wasapi_t*)wh;
   HRESULT hr = _IAudioClient_Start(w->client);

   if (hr == AUDCLNT_E_NOT_STOPPED)
      return 1;

   if (FAILED(hr))
      return w->running;

   w->running = 1;

   return 1;
}
