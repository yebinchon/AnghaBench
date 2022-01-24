#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int int32 ;
typedef  int int16 ;
struct TYPE_4__ {int filter; int lp_range; scalar_t__ mono; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** blips; } ;

/* Variables and functions */
 int ALIGN_SND ; 
 scalar_t__ SYSTEM_MCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__ config ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  eq ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int llp ; 
 int /*<<< orphan*/  mcycles_vdp ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int rrp ; 
 TYPE_1__ snd ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ system_hw ; 

int FUNC7(int16 *buffer)
{
  /* run sound chips until end of frame */
  int size = FUNC6(mcycles_vdp);

  /* Mega CD specific */
  if (system_hw == SYSTEM_MCD)
  {
    /* sync PCM chip with other sound chips */
    FUNC5(size);

    /* read CDDA samples */
    FUNC2(size);
  }

#ifdef ALIGN_SND
  /* return an aligned number of samples if required */
  size &= ALIGN_SND;
#endif

  /* resample FM & PSG mixed stream to output buffer */
#ifdef LSB_FIRST
  blip_read_samples(snd.blips[0][0], buffer, size);
  blip_read_samples(snd.blips[0][1], buffer + 1, size);
#else
  FUNC1(snd.blips[0][0], buffer + 1, size);
  FUNC1(snd.blips[0][1], buffer, size);
#endif

  /* Mega CD specific */
  if (system_hw == SYSTEM_MCD)
  {
    /* resample PCM & CD-DA streams to output buffer */
#ifdef LSB_FIRST
    blip_mix_samples(snd.blips[1][0], buffer, size);
    blip_mix_samples(snd.blips[1][1], buffer + 1, size);
    blip_mix_samples(snd.blips[2][0], buffer, size);
    blip_mix_samples(snd.blips[2][1], buffer + 1, size);
#else
    FUNC0(snd.blips[1][0], buffer + 1, size);
    FUNC0(snd.blips[1][1], buffer, size);
    FUNC0(snd.blips[2][0], buffer + 1, size);
    FUNC0(snd.blips[2][1], buffer, size);
#endif
  }

  /* Audio filtering */
  if (config.filter)
  {
    int samples = size;
    int16 *out = buffer;
    int32 l, r;

    if (config.filter & 1)
    {
      /* single-pole low-pass filter (6 dB/octave) */
      uint32 factora  = config.lp_range;
      uint32 factorb  = 0x10000 - factora;

      /* restore previous sample */
      l = llp;
      r = rrp;

      do
      {
        /* apply low-pass filter */
        l = l*factora + out[0]*factorb;
        r = r*factora + out[1]*factorb;

        /* 16.16 fixed point */
        l >>= 16;
        r >>= 16;

        /* update sound buffer */
        *out++ = l;
        *out++ = r;
      }
      while (--samples);

      /* save last samples for next frame */
      llp = l;
      rrp = r;
    }
    else if (config.filter & 2)
    {
      do
      {
        /* 3 Band EQ */
        l = FUNC3(&eq,out[0]);
        r = FUNC3(&eq,out[1]);

        /* clipping (16-bit samples) */
        if (l > 32767) l = 32767;
        else if (l < -32768) l = -32768;
        if (r > 32767) r = 32767;
        else if (r < -32768) r = -32768;

        /* update sound buffer */
        *out++ = l;
        *out++ = r;
      }
      while (--samples);
    }
  }

  /* Mono output mixing */
  if (config.mono)
  {
    int16 out;
    int samples = size;
    do
    {
      out = (buffer[0] + buffer[1]) / 2;
      *buffer++ = out;
      *buffer++ = out;
    }
    while (--samples);
  }

#ifdef LOGSOUND
  error("%d samples returned\n\n",size);
#endif

  return size;
}