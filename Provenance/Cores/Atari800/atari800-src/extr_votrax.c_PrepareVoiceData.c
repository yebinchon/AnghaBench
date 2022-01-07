
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iType; int iSecondStart; int iLengthms; int** lpStart; scalar_t__ sameAs; int* iLength; } ;
struct TYPE_3__ {size_t actPhoneme; int iRemainingSamples; int iSamplesInBuffer; int* lpBuffer; size_t actIntonation; int* pActPos; int* pBufferPos; int iDelay; } ;
typedef int SWORD ;
 TYPE_2__* PhonemeData ;
 int memcpy (int*,int*,int) ;
 double sin (double) ;
 int time_to_samples (int) ;
 TYPE_1__ votraxsc01_locals ;

__attribute__((used)) static void PrepareVoiceData(int nextPhoneme, int nextIntonation)
{
 int iNextRemainingSamples;
 SWORD *pNextPos, *lpHelp;

 int iFadeOutSamples;
 int iFadeOutPos;

 int iFadeInSamples;
 int iFadeInPos;

 int doMix;

 int AdditionalSamples;

 int dwCount, i;

 SWORD data;

 AdditionalSamples = 0;

 if ( PhonemeData[votraxsc01_locals.actPhoneme].iType>=128 && votraxsc01_locals.actPhoneme!=nextPhoneme ) {
  AdditionalSamples = PhonemeData[votraxsc01_locals.actPhoneme].iSecondStart;
 }

 if ( PhonemeData[nextPhoneme].iType>=128 ) {

  votraxsc01_locals.iRemainingSamples = 0;
  return;
 }


 dwCount = time_to_samples(PhonemeData[nextPhoneme].iLengthms);

 votraxsc01_locals.iSamplesInBuffer = dwCount+AdditionalSamples;

 if ( AdditionalSamples )
  memcpy(votraxsc01_locals.lpBuffer, PhonemeData[votraxsc01_locals.actPhoneme].lpStart[votraxsc01_locals.actIntonation], AdditionalSamples*sizeof(SWORD));

 lpHelp = votraxsc01_locals.lpBuffer + AdditionalSamples;

 iNextRemainingSamples = 0;
 pNextPos = ((void*)0);

 iFadeOutSamples = 0;
 iFadeOutPos = 0;

 iFadeInSamples = 0;
 iFadeInPos = 0;

 doMix = 0;


 if ( PhonemeData[votraxsc01_locals.actPhoneme].sameAs!=PhonemeData[nextPhoneme].sameAs ) {



  switch ( PhonemeData[votraxsc01_locals.actPhoneme].iType ) {
   case 131:

    iFadeOutSamples = time_to_samples(30);
    iFadeOutPos = 0;


    iFadeInPos = -time_to_samples(30);
    iFadeInSamples = time_to_samples(30);
    break;

   case 130:
   case 129:
    switch ( PhonemeData[nextPhoneme].iType ){
     case 134:
     case 129:

      iFadeOutPos = 0;
      iFadeOutSamples = time_to_samples(30);

      iFadeInPos = -time_to_samples(30);
      iFadeInSamples = time_to_samples(30);
      break;

     case 132:

      iFadeOutPos = 0;
      iFadeOutSamples = time_to_samples(40);

      iFadeInPos = -time_to_samples(10);
      iFadeInSamples = time_to_samples(10);
      break;

     default:

      iFadeOutPos = 0;
      iFadeOutSamples = time_to_samples(20);

      iFadeInPos = -time_to_samples(0);
      iFadeInSamples = time_to_samples(20);
      break;
    }
    break;

   case 132:
    switch ( PhonemeData[nextPhoneme].iType ){
     case 130:
     case 129:

      iFadeOutPos = 0;
      iFadeOutSamples = time_to_samples(30);

      iFadeInPos = -time_to_samples(10);
      iFadeInSamples = time_to_samples(40);
      break;

     default:
      break;
    }

   case 128:
   case 133:
    iFadeOutPos = 0;
    iFadeOutSamples = PhonemeData[votraxsc01_locals.actPhoneme].iLength[votraxsc01_locals.actIntonation] - PhonemeData[votraxsc01_locals.actPhoneme].iSecondStart;
    votraxsc01_locals.pActPos = PhonemeData[votraxsc01_locals.actPhoneme].lpStart[votraxsc01_locals.actIntonation] + PhonemeData[votraxsc01_locals.actPhoneme].iSecondStart;
    votraxsc01_locals.iRemainingSamples = iFadeOutSamples;
    doMix = 1;

    iFadeInPos = -time_to_samples(0);
    iFadeInSamples = time_to_samples(0);

    break;

   default:

    iFadeOutPos = 0;
    iFadeOutSamples = time_to_samples(20);

    iFadeInPos = -time_to_samples(20);
    break;
  }

  if ( !votraxsc01_locals.iDelay ) {


   iFadeOutPos = 0;
   iFadeOutSamples = 0;
  }

 }
 else {

  iNextRemainingSamples = votraxsc01_locals.iRemainingSamples;
  pNextPos = votraxsc01_locals.pActPos;
 }

 for (i=0; i<dwCount; i++)
 {
  data = 0x00;


  if ( iFadeOutPos<iFadeOutSamples )
  {
   double dFadeOut = 1.0;

   if ( !doMix )
    dFadeOut = 1.0-sin((1.0*iFadeOutPos/iFadeOutSamples)*3.1415/2);

   if ( !votraxsc01_locals.iRemainingSamples ) {
    votraxsc01_locals.iRemainingSamples = PhonemeData[votraxsc01_locals.actPhoneme].iLength[votraxsc01_locals.actIntonation];
    votraxsc01_locals.pActPos = PhonemeData[votraxsc01_locals.actPhoneme].lpStart[votraxsc01_locals.actIntonation];
   }

   data = (SWORD) (*votraxsc01_locals.pActPos++ * dFadeOut);

   votraxsc01_locals.iRemainingSamples--;
   iFadeOutPos++;
  }


  if ( iFadeInPos>=0 )
  {
   double dFadeIn = 1.0;

   if ( iFadeInPos<iFadeInSamples ) {
    dFadeIn = sin((1.0*iFadeInPos/iFadeInSamples)*3.1415/2);
    iFadeInPos++;
   }

   if ( !iNextRemainingSamples ) {
    iNextRemainingSamples = PhonemeData[nextPhoneme].iLength[nextIntonation];
    pNextPos = PhonemeData[nextPhoneme].lpStart[nextIntonation];
   }

   data += (SWORD) (*pNextPos++ * dFadeIn);

   iNextRemainingSamples--;
  }
  iFadeInPos++;

  *lpHelp++ = data;
 }

 votraxsc01_locals.pBufferPos = votraxsc01_locals.lpBuffer;

 votraxsc01_locals.pActPos = pNextPos;
 votraxsc01_locals.iRemainingSamples = iNextRemainingSamples;
}
