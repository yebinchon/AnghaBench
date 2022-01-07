
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s16 ;
typedef int Result ;


 int BIT (int) ;
 int CSND_ENCODING_ADPCM ;
 int CSND_ENCODING_PSG ;
 int CSND_LOOPMODE_NORMAL ;
 int CSND_SetAdpcmState (int,int ,int,int) ;
 int CSND_SetBlock (int,int,int,int) ;
 int CSND_SetChnRegs (int,int,int,int,int,int) ;
 int CSND_VOL (float,float) ;
 int CTR_CSND_TICKS_PER_SAMPLE ;
 int SOUND_CHANNEL (int) ;
 int SOUND_ENABLE ;
 int SOUND_ONE_SHOT ;
 int csndChannels ;
 int osConvertVirtToPhys (void*) ;

Result csndPlaySound_custom(int chn, u32 flags, float vol, float pan,
      void* data0, void* data1, u32 size)
{
 u32 paddr0 = 0;
   u32 paddr1 = 0;
 int encoding = (flags >> 12) & 3;
 int loopMode = (flags >> 10) & 3;

 if (!(csndChannels & BIT(chn)))
  return 1;

 if (!loopMode)
      flags |= SOUND_ONE_SHOT;

 if (encoding != CSND_ENCODING_PSG)
 {
  if (data0)
         paddr0 = osConvertVirtToPhys(data0);
  if (data1)
         paddr1 = osConvertVirtToPhys(data1);

  if (data0 && encoding == CSND_ENCODING_ADPCM)
  {
   int adpcmSample = ((s16*)data0)[-2];
   int adpcmIndex = ((u8*)data0)[-2];
   CSND_SetAdpcmState(chn, 0, adpcmSample, adpcmIndex);
  }
 }

 flags &= ~0xFFFF001F;
 flags |= SOUND_ENABLE | SOUND_CHANNEL(chn) | (CTR_CSND_TICKS_PER_SAMPLE << 16);

 u32 volumes = CSND_VOL(vol, pan);
 CSND_SetChnRegs(flags, paddr0, paddr1, size, volumes, volumes);

 if (loopMode == CSND_LOOPMODE_NORMAL && paddr1 > paddr0)
 {


  size -= paddr1 - paddr0;
  CSND_SetBlock(chn, 1, paddr1, size);
 }

 return 0;
}
