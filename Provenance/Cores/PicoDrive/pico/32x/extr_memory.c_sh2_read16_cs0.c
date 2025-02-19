
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int u32 ;
struct TYPE_15__ {scalar_t__ is_slave; } ;
struct TYPE_14__ {int* w; } ;
struct TYPE_13__ {int* w; } ;
struct TYPE_12__ {int* pal; TYPE_2__ sh2_rom_s; TYPE_1__ sh2_rom_m; } ;
typedef TYPE_3__ SH2 ;


 int EL_32X ;
 int EL_LOGMASK ;
 int EL_PWM ;
 TYPE_11__* Pico32xMem ;
 int SH2_STATE_VPOLL ;
 int elprintf_sh2 (TYPE_3__*,int ,char*,int,int,int ) ;
 int p32x_sh2reg_read16 (int,TYPE_3__*) ;
 int p32x_vdp_read16 (int) ;
 int sh2_burn_cycles (TYPE_3__*,int) ;
 int sh2_pc (TYPE_3__*) ;
 int sh2_poll_detect (TYPE_3__*,int,int ,int) ;
 int sh2_read16_unmapped (int,TYPE_3__*) ;

__attribute__((used)) static u32 sh2_read16_cs0(u32 a, SH2 *sh2)
{
  u32 d = 0;

  sh2_burn_cycles(sh2, 1*2);

  if ((a & 0x3ffc0) == 0x4000) {
    d = p32x_sh2reg_read16(a, sh2);
    if (!(EL_LOGMASK & EL_PWM) && (a & 0x30) == 0x30)
      return d;
    goto out;
  }

  if ((a & 0x3fff0) == 0x4100) {
    d = p32x_vdp_read16(a);
    sh2_poll_detect(sh2, a, SH2_STATE_VPOLL, 7);
    goto out;
  }

  if (!sh2->is_slave && a < sizeof(Pico32xMem->sh2_rom_m))
    return Pico32xMem->sh2_rom_m.w[a / 2];
  if (sh2->is_slave && a < sizeof(Pico32xMem->sh2_rom_s))
    return Pico32xMem->sh2_rom_s.w[a / 2];

  if ((a & 0x3fe00) == 0x4200) {
    d = Pico32xMem->pal[(a & 0x1ff) / 2];
    goto out;
  }

  return sh2_read16_unmapped(a, sh2);

out:
  elprintf_sh2(sh2, EL_32X, "r16 [%08x]     %04x @%06x",
    a, d, sh2_pc(sh2));
  return d;
}
