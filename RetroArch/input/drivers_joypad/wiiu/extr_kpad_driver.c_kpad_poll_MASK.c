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
typedef  int /*<<< orphan*/  kpad ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  KPADData ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ *,int) ; 
 unsigned int WIIU_WIIMOTE_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int* poll_failures ; 

__attribute__((used)) static void FUNC4(void)
{
   unsigned channel;
   KPADData kpad;
   int32_t result = 0;

   for (channel = 0; channel < WIIU_WIIMOTE_CHANNELS; channel++)
   {
      FUNC3(&kpad, 0, sizeof(kpad));

      result = FUNC0(channel, &kpad, 1);
      /* this is a hack to prevent spurious disconnects */
      /* TODO: use KPADSetConnectCallback and use callbacks to detect */
      /*       pad disconnects properly. */
      if (result == 0)
      {
         poll_failures[channel]++;
         if(poll_failures[channel] > 5)
            FUNC1(channel);
         continue;
      }
      poll_failures[channel] = 0;

      FUNC2(channel, &kpad);
   }
}