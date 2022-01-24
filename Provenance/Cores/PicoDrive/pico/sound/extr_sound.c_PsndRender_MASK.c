#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* s68k_regs; scalar_t__ cdda_type; int /*<<< orphan*/ * cdda_stream; } ;

/* Variables and functions */
 scalar_t__ CT_MP3 ; 
 int PAHW_32X ; 
 int PAHW_MCD ; 
 int PAHW_PICO ; 
 int POPT_EN_FM ; 
 int POPT_EN_MCD_CDDA ; 
 int POPT_EN_PSG ; 
 int POPT_EN_PWM ; 
 int PicoAHW ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 
 TYPE_1__* Pico_mcd ; 
 int* PsndBuffer ; 
 scalar_t__ PsndLen_exc_add ; 
 int PsndLen_exc_cnt ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int) ; 
 scalar_t__ PsndOut ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 int FUNC3 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sound ; 

__attribute__((used)) static int FUNC11(int offset, int length)
{
  int  buf32_updated = 0;
  int *buf32 = PsndBuffer+offset;
  int stereo = (PicoOpt & 8) >> 3;

  offset <<= stereo;

  FUNC10(sound);

#if !SIMPLE_WRITE_SOUND
  if (offset == 0) { // should happen once per frame
    // compensate for float part of PsndLen
    PsndLen_exc_cnt += PsndLen_exc_add;
    if (PsndLen_exc_cnt >= 0x10000) {
      PsndLen_exc_cnt -= 0x10000;
      length++;
    }
  }
#endif

  // PSG
  if (PicoOpt & POPT_EN_PSG)
    FUNC2(PsndOut+offset, length, stereo);

  if (PicoAHW & PAHW_PICO) {
    FUNC0(PsndOut+offset, length, stereo);
    return length;
  }

  // Add in the stereo FM buffer
  if (PicoOpt & POPT_EN_FM) {
    buf32_updated = FUNC3(buf32, length, stereo, 1);
  } else
    FUNC5(buf32, 0, length<<stereo);

//printf("active_chs: %02x\n", buf32_updated);
  (void)buf32_updated;

  // CD: PCM sound
  if (PicoAHW & PAHW_MCD) {
    FUNC8(buf32, length, stereo);
    //buf32_updated = 1;
  }

  // CD: CDDA audio
  // CD mode, cdda enabled, not data track, CDC is reading
  if ((PicoAHW & PAHW_MCD) && (PicoOpt & POPT_EN_MCD_CDDA)
      && Pico_mcd->cdda_stream != NULL
      && !(Pico_mcd->s68k_regs[0x36] & 1))
  {
    // note: only 44, 22 and 11 kHz supported, with forced stereo
    if (Pico_mcd->cdda_type == CT_MP3)
      FUNC6(buf32, length, stereo);
    else
      FUNC4(buf32, length);
  }

  if ((PicoAHW & PAHW_32X) && (PicoOpt & POPT_EN_PWM))
    FUNC7(buf32, length, stereo);

  // convert + limit to normal 16bit output
  FUNC1(PsndOut+offset, buf32, length);

  FUNC9(sound);

  return length;
}