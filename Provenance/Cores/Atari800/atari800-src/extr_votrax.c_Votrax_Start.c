
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Votrax_interface {int dummy; } ;
struct TYPE_5__ {int iSecondStart; int iLengthms; } ;
struct TYPE_4__ {int actPhoneme; int actIntonation; int * lpBuffer; struct Votrax_interface* intf; } ;
typedef int SWORD ;


 TYPE_3__* PhonemeData ;
 int PrepareVoiceData (int,int ) ;
 scalar_t__ Util_malloc (int) ;
 int memset (TYPE_1__*,int,int) ;
 int time_to_samples (int ) ;
 TYPE_1__ votraxsc01_locals ;

int Votrax_Start(void *sound_interface)
{
 int i, buffer_size;

 memset(&votraxsc01_locals, 0x00, sizeof votraxsc01_locals);


 votraxsc01_locals.intf = (struct Votrax_interface *)sound_interface;

 votraxsc01_locals.actPhoneme = 0x3f;


 buffer_size = 0;
 for (i = 0; i <= 0x3f; i++) {
  int dwCount;
  int size;
  int AdditionalSamples;
  AdditionalSamples = PhonemeData[i].iSecondStart;
  dwCount = time_to_samples(PhonemeData[i].iLengthms);
  size = dwCount + AdditionalSamples;
  if (size > buffer_size) buffer_size = size;
 }
 votraxsc01_locals.lpBuffer = (SWORD*) Util_malloc(buffer_size*sizeof(SWORD));
 PrepareVoiceData(votraxsc01_locals.actPhoneme, votraxsc01_locals.actIntonation);
 return 0;
}
