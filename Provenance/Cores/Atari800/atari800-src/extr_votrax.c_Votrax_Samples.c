
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iType; int iSecondStart; int iLengthms; } ;


 scalar_t__ PT_VS ;
 TYPE_1__* PhonemeData ;
 int time_to_samples (int) ;

int Votrax_Samples(int currentP, int nextP, int cursamples)
{
 int AdditionalSamples = 0;
 int dwCount;
 int delay = 0;

 if ( PhonemeData[currentP].iType>=PT_VS && currentP!=nextP) {
  AdditionalSamples = PhonemeData[currentP].iSecondStart;
 }

 if ( PhonemeData[nextP].iType>=PT_VS ) {


  return cursamples;
 }
 if (currentP == 0x3f) delay = time_to_samples(20);


 dwCount = time_to_samples(PhonemeData[nextP].iLengthms);
 return dwCount + AdditionalSamples + delay ;
}
