
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int nBlockAlign; int wBitsPerSample; unsigned int nChannels; unsigned int nSamplesPerSec; int nAvgBytesPerSec; scalar_t__ cbSize; int wFormatTag; } ;
typedef TYPE_1__ WAVEFORMATEX ;


 int WAVE_FORMAT_IEEE_FLOAT ;

__attribute__((used)) static void xaudio2_set_wavefmt(WAVEFORMATEX *wfx,
      unsigned channels, unsigned samplerate)
{
   wfx->wFormatTag = WAVE_FORMAT_IEEE_FLOAT;
   wfx->nBlockAlign = channels * sizeof(float);
   wfx->wBitsPerSample = sizeof(float) * 8;

   wfx->nChannels = channels;
   wfx->nSamplesPerSec = samplerate;
   wfx->nAvgBytesPerSec = wfx->nSamplesPerSec * wfx->nBlockAlign;
   wfx->cbSize = 0;
}
