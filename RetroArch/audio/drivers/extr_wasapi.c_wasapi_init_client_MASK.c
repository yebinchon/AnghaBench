#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  double UINT32 ;
typedef  unsigned int REFERENCE_TIME ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int*,unsigned int*,unsigned int) ; 

__attribute__((used)) static IAudioClient *FUNC8(IMMDevice *device, bool *exclusive,
      bool *float_fmt, unsigned *rate, unsigned latency)
{
   HRESULT hr;
   IAudioClient *client;
   double latency_res;
   REFERENCE_TIME device_period  = 0;
   REFERENCE_TIME stream_latency = 0;
   UINT32 buffer_length          = 0;

   if (*exclusive)
   {
      client = FUNC6(device, float_fmt, rate, latency);
      if (!client)
      {
         client = FUNC7(device, float_fmt, rate, latency);
         if (client)
            *exclusive = false;
      }
   }
   else
   {
      client = FUNC7(device, float_fmt, rate, latency);
      if (!client)
      {
         client = FUNC6(device, float_fmt, rate, latency);
         if (client)
            *exclusive = true;
      }
   }

   if (!client)
      return NULL;

   /* next calls are allowed to fail (we losing info only) */

   if (*exclusive)
      hr = FUNC4(client, NULL, &device_period);
   else
      hr = FUNC4(client, &device_period, NULL);

   if (FUNC0(hr))
   {
      FUNC2("[WASAPI]: IAudioClient::GetDevicePeriod failed with error 0x%.8X.\n", hr);
   }

   if (!*exclusive)
   {
      hr = FUNC5(client, &stream_latency);
      if (FUNC0(hr))
      {
         FUNC2("[WASAPI]: IAudioClient::GetStreamLatency failed with error 0x%.8X.\n", hr);
      }
   }

   hr = FUNC3(client, &buffer_length);
   if (FUNC0(hr))
   {
      FUNC2("[WASAPI]: IAudioClient::GetBufferSize failed with error 0x%.8X.\n", hr);
   }

   if (*exclusive)
      latency_res = (double)buffer_length * 1000.0 / (*rate);
   else
      latency_res = (double)(stream_latency + device_period) / 10000.0;

   FUNC1("[WASAPI]: Client initialized (%s, %s, %uHz, %.1fms).\n",
         *exclusive ? "exclusive" : "shared",
         *float_fmt ? "float" : "pcm", *rate, latency_res);

   FUNC1("[WASAPI]: Client's buffer length is %u frames (%.1fms).\n",
         buffer_length, (double)buffer_length * 1000.0 / (*rate));

   FUNC1("[WASAPI]: Device period is %.1fms (%lld frames).\n",
         (double)device_period / 10000.0, device_period * (*rate) / 10000000);

   return client;
}