
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kpad ;
typedef scalar_t__ int32_t ;
typedef int KPADData ;


 scalar_t__ KPADRead (unsigned int,int *,int) ;
 unsigned int WIIU_WIIMOTE_CHANNELS ;
 int kpad_deregister (unsigned int) ;
 int kpad_poll_one_channel (unsigned int,int *) ;
 int memset (int *,int ,int) ;
 int* poll_failures ;

__attribute__((used)) static void kpad_poll(void)
{
   unsigned channel;
   KPADData kpad;
   int32_t result = 0;

   for (channel = 0; channel < WIIU_WIIMOTE_CHANNELS; channel++)
   {
      memset(&kpad, 0, sizeof(kpad));

      result = KPADRead(channel, &kpad, 1);



      if (result == 0)
      {
         poll_failures[channel]++;
         if(poll_failures[channel] > 5)
            kpad_deregister(channel);
         continue;
      }
      poll_failures[channel] = 0;

      kpad_poll_one_channel(channel, &kpad);
   }
}
