
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WAVEFORMATEXTENSIBLE ;
typedef int WAVEFORMATEX ;
typedef double UINT32 ;
struct TYPE_11__ {scalar_t__ (* Initialize ) (int ,int,double,double,int *,int *) ;TYPE_1__* lpVtbl; } ;
struct TYPE_10__ {scalar_t__ (* Initialize ) (TYPE_2__*,int ,int,double,double,int *,int *) ;} ;
typedef double REFERENCE_TIME ;
typedef int IMMDevice ;
typedef TYPE_2__ IAudioClient ;
typedef scalar_t__ HRESULT ;


 scalar_t__ AUDCLNT_E_ALREADY_INITIALIZED ;
 scalar_t__ AUDCLNT_E_BUFFER_SIZE_NOT_ALIGNED ;
 scalar_t__ AUDCLNT_E_DEVICE_IN_USE ;
 scalar_t__ AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED ;
 scalar_t__ AUDCLNT_E_UNSUPPORTED_FORMAT ;
 int AUDCLNT_SHAREMODE_EXCLUSIVE ;
 int AUDCLNT_STREAMFLAGS_EVENTCALLBACK ;
 int AUDCLNT_STREAMFLAGS_NOPERSIST ;
 int CLSCTX_ALL ;
 scalar_t__ FAILED (scalar_t__) ;
 int IFACE_RELEASE (TYPE_2__*) ;
 int IID_IAudioClient ;
 int RARCH_LOG (char*,char*,unsigned int,unsigned int) ;
 int RARCH_WARN (char*) ;
 scalar_t__ _IAudioClient_GetBufferSize (TYPE_2__*,double*) ;
 scalar_t__ _IAudioClient_GetDevicePeriod (TYPE_2__*,int *,double*) ;
 scalar_t__ _IMMDevice_Activate (int *,int ,int ,int *,void**) ;
 scalar_t__ stub1 (int ,int,double,double,int *,int *) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int,double,double,int *,int *) ;
 scalar_t__ stub3 (int ,int,double,double,int *,int *) ;
 scalar_t__ stub4 (TYPE_2__*,int ,int,double,double,int *,int *) ;
 scalar_t__ stub5 (int ,int,double,double,int *,int *) ;
 scalar_t__ stub6 (TYPE_2__*,int ,int,double,double,int *,int *) ;
 unsigned int wasapi_pref_rate (int) ;
 int wasapi_set_format (int *,int,unsigned int) ;

__attribute__((used)) static IAudioClient *wasapi_init_client_ex(IMMDevice *device,
      bool *float_fmt, unsigned *rate, unsigned latency)
{
   WAVEFORMATEXTENSIBLE wf;
   int i, j;
   IAudioClient *client = ((void*)0);
   bool float_fmt_res = *float_fmt;
   unsigned rate_res = *rate;
   REFERENCE_TIME minimum_period = 0;
   REFERENCE_TIME buffer_duration = 0;
   UINT32 buffer_length = 0;
   HRESULT hr = _IMMDevice_Activate(device,
         IID_IAudioClient,
         CLSCTX_ALL, ((void*)0), (void**)&client);
   if (FAILED(hr))
      return ((void*)0);

   hr = _IAudioClient_GetDevicePeriod(client, ((void*)0), &minimum_period);
   if (FAILED(hr))
      goto error;


   buffer_duration = latency * 10000.0;
   if (buffer_duration < minimum_period)
      buffer_duration = minimum_period;


   for (i = 0; i < 2; ++i)
   {
      rate_res = *rate;
      if (i == 1)
         float_fmt_res = !float_fmt_res;


      for (j = 0; rate_res; ++j)
      {
         RARCH_LOG("[WASAPI]: Initializing client (exclusive, %s, %uHz, %ums) ...\n",
               float_fmt_res ? "float" : "pcm", rate_res, latency);

         wasapi_set_format(&wf, float_fmt_res, rate_res);





         hr = client->lpVtbl->Initialize(client, AUDCLNT_SHAREMODE_EXCLUSIVE,
               AUDCLNT_STREAMFLAGS_EVENTCALLBACK | AUDCLNT_STREAMFLAGS_NOPERSIST,
               buffer_duration, buffer_duration, (WAVEFORMATEX*)&wf, ((void*)0));

         if (hr == AUDCLNT_E_BUFFER_SIZE_NOT_ALIGNED)
         {
            hr = _IAudioClient_GetBufferSize(client, &buffer_length);
            if (FAILED(hr))
               goto error;

            IFACE_RELEASE(client);
            hr = _IMMDevice_Activate(device,
                  IID_IAudioClient,
                  CLSCTX_ALL, ((void*)0), (void**)&client);
            if (FAILED(hr))
               return ((void*)0);

            buffer_duration = 10000.0 * 1000.0 / rate_res * buffer_length + 0.5;





            hr = client->lpVtbl->Initialize(client, AUDCLNT_SHAREMODE_EXCLUSIVE,
                  AUDCLNT_STREAMFLAGS_EVENTCALLBACK | AUDCLNT_STREAMFLAGS_NOPERSIST,
                  buffer_duration, buffer_duration, (WAVEFORMATEX*)&wf, ((void*)0));

         }
         if (hr == AUDCLNT_E_ALREADY_INITIALIZED)
         {
            IFACE_RELEASE(client);
            hr = _IMMDevice_Activate(device,
                  IID_IAudioClient,
                  CLSCTX_ALL, ((void*)0), (void**)&client);
            if (FAILED(hr))
               return ((void*)0);






            hr = client->lpVtbl->Initialize(client, AUDCLNT_SHAREMODE_EXCLUSIVE,
                  AUDCLNT_STREAMFLAGS_EVENTCALLBACK | AUDCLNT_STREAMFLAGS_NOPERSIST,
                  buffer_duration, buffer_duration, (WAVEFORMATEX*)&wf, ((void*)0));

         }
         if (hr != AUDCLNT_E_UNSUPPORTED_FORMAT)
         {
            if (hr == AUDCLNT_E_DEVICE_IN_USE)
               goto error;

            if (hr == AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED)
               goto error;

            i = 2;
            break;
         }

         RARCH_WARN("[WASAPI]: Unsupported format.\n");
         rate_res = wasapi_pref_rate(j);
         if (rate_res == *rate)
            rate_res = wasapi_pref_rate(++j);
      }
   }

   if (FAILED(hr))
      goto error;

   *float_fmt = float_fmt_res;
   *rate = rate_res;

   return client;

error:
   IFACE_RELEASE(client);

   return ((void*)0);
}
