
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {int nChannels; unsigned int nSamplesPerSec; unsigned int nAvgBytesPerSec; int nBlockAlign; int wBitsPerSample; int cbSize; int wFormatTag; } ;
struct TYPE_5__ {int wValidBitsPerSample; } ;
struct TYPE_7__ {TYPE_2__ Format; int SubFormat; int dwChannelMask; TYPE_1__ Samples; } ;
typedef TYPE_3__ WAVEFORMATEXTENSIBLE ;
typedef int GUID ;
typedef int DWORD ;


 int KSAUDIO_SPEAKER_STEREO ;
 int KSDATAFORMAT_SUBTYPE_IEEE_FLOAT ;
 int WAVE_FORMAT_EXTENSIBLE ;
 int WAVE_FORMAT_PCM ;

__attribute__((used)) static void wasapi_set_format(WAVEFORMATEXTENSIBLE *wf,
      bool float_fmt, unsigned rate)
{
   wf->Format.nChannels = 2;
   wf->Format.nSamplesPerSec = rate;

   if (float_fmt)
   {
      wf->Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
      wf->Format.nAvgBytesPerSec = rate * 8;
      wf->Format.nBlockAlign = 8;
      wf->Format.wBitsPerSample = 32;
      wf->Format.cbSize = sizeof(WORD) + sizeof(DWORD) + sizeof(GUID);
      wf->Samples.wValidBitsPerSample = 32;
      wf->dwChannelMask = KSAUDIO_SPEAKER_STEREO;
      wf->SubFormat = KSDATAFORMAT_SUBTYPE_IEEE_FLOAT;
   }
   else
   {
      wf->Format.wFormatTag = WAVE_FORMAT_PCM;
      wf->Format.nAvgBytesPerSec = rate * 4;
      wf->Format.nBlockAlign = 4;
      wf->Format.wBitsPerSample = 16;
      wf->Format.cbSize = 0;
   }
}
