
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_ints; scalar_t__ pending; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 int EL_SR ;
 TYPE_2__ Pico ;
 int elprintf (int ,char*,unsigned char) ;

__attribute__((used)) static unsigned char vdp_ctl_read(void)
{
  unsigned char d = Pico.video.pending_ints << 7;
  Pico.video.pending = 0;
  Pico.video.pending_ints = 0;

  elprintf(EL_SR, "VDP sr: %02x", d);
  return d;
}
