
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iType; int* lpStart; int* iLength; } ;
struct TYPE_5__ {int actIntonation; int iDelay; int iSamplesInBuffer; int iRemainingSamples; size_t actPhoneme; int pActPos; int pBufferPos; scalar_t__ busy; TYPE_1__* intf; } ;
struct TYPE_4__ {int (* BusyCallback ) (scalar_t__) ;} ;
typedef int SWORD ;


 scalar_t__ PT_VS ;
 TYPE_3__* PhonemeData ;
 int memcpy (int *,int,int) ;
 int memset (int *,int,int) ;
 int stub1 (scalar_t__) ;
 TYPE_2__ votraxsc01_locals ;

void Votrax_Update(int num, SWORD *buffer, int length)
{
 int samplesToCopy;
 while ( length ) {

  if ( votraxsc01_locals.iDelay ) {
   samplesToCopy = (length<=votraxsc01_locals.iDelay)?length:votraxsc01_locals.iDelay;

   memset(buffer, 0x00, samplesToCopy*sizeof(SWORD));
   buffer += samplesToCopy;

   votraxsc01_locals.iDelay -= samplesToCopy;
   length -= samplesToCopy;
  }

  else if ( votraxsc01_locals.iSamplesInBuffer==0 ) {
   if ( votraxsc01_locals.busy ) {

    votraxsc01_locals.busy = 0;
    if ( votraxsc01_locals.intf->BusyCallback )
     (*votraxsc01_locals.intf->BusyCallback)(votraxsc01_locals.busy);
   }

   if ( votraxsc01_locals.iRemainingSamples==0 ) {
    if ( PhonemeData[votraxsc01_locals.actPhoneme].iType>=PT_VS ) {
     votraxsc01_locals.pActPos = PhonemeData[0x3f].lpStart[0];
     votraxsc01_locals.iRemainingSamples = PhonemeData[0x3f].iLength[0];
    }
    else {
     votraxsc01_locals.pActPos = PhonemeData[votraxsc01_locals.actPhoneme].lpStart[votraxsc01_locals.actIntonation];
     votraxsc01_locals.iRemainingSamples = PhonemeData[votraxsc01_locals.actPhoneme].iLength[votraxsc01_locals.actIntonation];
    }

   }


   samplesToCopy = (length<=votraxsc01_locals.iRemainingSamples)?length:votraxsc01_locals.iRemainingSamples;

   memcpy(buffer, votraxsc01_locals.pActPos, samplesToCopy*sizeof(SWORD));
   buffer += samplesToCopy;

   votraxsc01_locals.pActPos += samplesToCopy;
   votraxsc01_locals.iRemainingSamples -= samplesToCopy;

   length -= samplesToCopy;
  }

  else {
   samplesToCopy = (length<=votraxsc01_locals.iSamplesInBuffer)?length:votraxsc01_locals.iSamplesInBuffer;

   memcpy(buffer, votraxsc01_locals.pBufferPos, samplesToCopy*sizeof(SWORD));
   buffer += samplesToCopy;

   votraxsc01_locals.pBufferPos += samplesToCopy;
   votraxsc01_locals.iSamplesInBuffer -= samplesToCopy;

   length -= samplesToCopy;
  }
 }
}
