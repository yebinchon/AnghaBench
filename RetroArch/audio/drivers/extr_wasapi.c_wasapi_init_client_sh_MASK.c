#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WAVEFORMATEXTENSIBLE ;
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
struct TYPE_8__ {scalar_t__ (* Initialize ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_1__* lpVtbl; } ;
struct TYPE_7__ {scalar_t__ (* Initialize ) (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  TYPE_2__ IAudioClient ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ AUDCLNT_E_ALREADY_INITIALIZED ; 
 scalar_t__ AUDCLNT_E_UNSUPPORTED_FORMAT ; 
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int AUDCLNT_STREAMFLAGS_EVENTCALLBACK ; 
 int AUDCLNT_STREAMFLAGS_NOPERSIST ; 
 int /*<<< orphan*/  CLSCTX_ALL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,unsigned int) ; 

__attribute__((used)) static IAudioClient *FUNC11(IMMDevice *device,
      bool *float_fmt, unsigned *rate, unsigned latency)
{
   WAVEFORMATEXTENSIBLE wf;
   int i, j;
   IAudioClient *client = NULL;
   bool float_fmt_res   = *float_fmt;
   unsigned rate_res    = *rate;
   HRESULT hr           = FUNC4(device,
         IID_IAudioClient,
         CLSCTX_ALL, NULL, (void**)&client);
   if (FUNC0(hr))
      return NULL;

   /* once for float, once for pcm (requested first) */
   for (i = 0; i < 2; ++i)
   {
      rate_res = *rate;
      if (i == 1)
         float_fmt_res = !float_fmt_res;

      /* for requested rate (first) and all preferred rates */
      for (j = 0; rate_res; ++j)
      {
         FUNC2("[WASAPI]: Initializing client (shared, %s, %uHz, %ums) ...\n",
               float_fmt_res ? "float" : "pcm", rate_res, latency);

         FUNC10(&wf, float_fmt_res, rate_res);
#ifdef __cplusplus
         hr = client->Initialize(AUDCLNT_SHAREMODE_SHARED,
               AUDCLNT_STREAMFLAGS_EVENTCALLBACK | AUDCLNT_STREAMFLAGS_NOPERSIST,
               0, 0, (WAVEFORMATEX*)&wf, NULL);
#else
         hr = client->lpVtbl->Initialize(client, AUDCLNT_SHAREMODE_SHARED,
               AUDCLNT_STREAMFLAGS_EVENTCALLBACK | AUDCLNT_STREAMFLAGS_NOPERSIST,
               0, 0, (WAVEFORMATEX*)&wf, NULL);
#endif

         if (hr == AUDCLNT_E_ALREADY_INITIALIZED)
         {
            HRESULT hr;
            FUNC1(client);
            hr           = FUNC4(device,
                  IID_IAudioClient,
                  CLSCTX_ALL, NULL, (void**)&client);
            if (FUNC0(hr))
               return NULL;

#ifdef __cplusplus
            hr = client->Initialize(AUDCLNT_SHAREMODE_SHARED,
                  AUDCLNT_STREAMFLAGS_EVENTCALLBACK | AUDCLNT_STREAMFLAGS_NOPERSIST,
                  0, 0, (WAVEFORMATEX*)&wf, NULL);
#else
            hr = client->lpVtbl->Initialize(client, AUDCLNT_SHAREMODE_SHARED,
                  AUDCLNT_STREAMFLAGS_EVENTCALLBACK | AUDCLNT_STREAMFLAGS_NOPERSIST,
                  0, 0, (WAVEFORMATEX*)&wf, NULL);
#endif
         }
         if (hr != AUDCLNT_E_UNSUPPORTED_FORMAT)
         {
            i = 2; /* break from outer loop too */
            break;
         }

         FUNC3("[WASAPI]: Unsupported format.\n");
         rate_res = FUNC9(j);
         if (rate_res == *rate) /* requested rate is allready tested */
            rate_res = FUNC9(++j); /* skip it */
      }
   }

   if (FUNC0(hr))
      goto error;

   *float_fmt = float_fmt_res;
   *rate      = rate_res;

   return client;

error:
   FUNC1(client);

   return NULL;
}