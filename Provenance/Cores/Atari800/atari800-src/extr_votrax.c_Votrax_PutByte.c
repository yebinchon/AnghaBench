
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_4__ {int actPhoneme; int busy; int actIntonation; TYPE_1__* intf; int iDelay; } ;
struct TYPE_3__ {int (* BusyCallback ) (int) ;} ;


 int LOG (char*) ;
 int * PhonemeNames ;
 int PrepareVoiceData (int,int) ;
 int stub1 (int) ;
 int time_to_samples (int) ;
 TYPE_2__ votraxsc01_locals ;

void Votrax_PutByte(UBYTE data)
{
 int Phoneme, Intonation;

 Phoneme = data & 0x3F;
 Intonation = (data >> 6)&0x03;







 LOG(("Votrax SC-01: %s at intonation %d\n", PhonemeNames[Phoneme], Intonation));
 PrepareVoiceData(Phoneme, Intonation);

 if ( votraxsc01_locals.actPhoneme==0x3f )
  votraxsc01_locals.iDelay = time_to_samples(20);

 if ( !votraxsc01_locals.busy )
 {
  votraxsc01_locals.busy = 1;
  if ( votraxsc01_locals.intf->BusyCallback )
   (*votraxsc01_locals.intf->BusyCallback)(votraxsc01_locals.busy);
 }

 votraxsc01_locals.actPhoneme = Phoneme;
 votraxsc01_locals.actIntonation = Intonation;
}
