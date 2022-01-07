
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* regs; } ;
struct TYPE_3__ {short* pwm; scalar_t__* pwm_current; } ;


 int EL_PWM ;
 TYPE_2__ Pico32x ;
 TYPE_1__* Pico32xMem ;
 int SekCyclesDone () ;
 int consume_fifo (int *,int ) ;
 int elprintf (int ,char*,int,int,int,int) ;
 int pwm_ptr ;
 int pwm_silent ;

void p32x_pwm_update(int *buf32, int length, int stereo)
{
  short *pwmb;
  int step;
  int p = 0;
  int xmd;

  consume_fifo(((void*)0), SekCyclesDone());

  xmd = Pico32x.regs[0x30 / 2] & 0x0f;
  if (xmd == 0 || xmd == 0x06 || xmd == 0x09 || xmd == 0x0f)
    goto out;
  if (pwm_silent)
    return;

  step = (pwm_ptr << 16) / length;
  pwmb = Pico32xMem->pwm;

  if (stereo)
  {
    if (xmd == 0x05) {

      while (length-- > 0) {
        *buf32++ += pwmb[0];
        *buf32++ += pwmb[1];

        p += step;
        pwmb += (p >> 16) * 2;
        p &= 0xffff;
      }
    }
    else if (xmd == 0x0a) {

      while (length-- > 0) {
        *buf32++ += pwmb[1];
        *buf32++ += pwmb[0];

        p += step;
        pwmb += (p >> 16) * 2;
        p &= 0xffff;
      }
    }
    else {

      if (xmd & 0x06)
        pwmb++;
      if (xmd & 0x0c)
        buf32++;
      while (length-- > 0) {
        *buf32 += *pwmb;

        p += step;
        pwmb += (p >> 16) * 2;
        p &= 0xffff;
        buf32 += 2;
      }
    }
  }
  else
  {

    while (length-- > 0) {
      *buf32++ += pwmb[0];

      p += step;
      pwmb += (p >> 16) * 2;
      p &= 0xffff;
    }
  }

  elprintf(EL_PWM, "pwm_update: pwm_ptr %d, len %d, step %04x, done %d",
    pwm_ptr, length, step, (pwmb - Pico32xMem->pwm) / 2);

out:
  pwm_ptr = 0;
  pwm_silent = Pico32xMem->pwm_current[0] == 0
    && Pico32xMem->pwm_current[1] == 0;
}
