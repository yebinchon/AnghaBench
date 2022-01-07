
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_21__ {int l; int h; int e; int d; int c; int b; int f; int a; } ;
struct TYPE_14__ {int l; int h; int e; int d; int c; int b; int f; int a; } ;
struct z80_state {int* irq_vector; scalar_t__ irq_pending; int im; scalar_t__ iff2; scalar_t__ iff1; scalar_t__ halted; scalar_t__ pc; scalar_t__ sp; int iy; int ix; int r; int i; TYPE_8__ a; TYPE_1__ m; int magic; } ;
struct TYPE_19__ {int L; int H; } ;
struct TYPE_20__ {TYPE_6__ B; } ;
struct TYPE_17__ {int L; int H; } ;
struct TYPE_18__ {TYPE_4__ B; } ;
struct TYPE_15__ {int L; int H; } ;
struct TYPE_16__ {TYPE_2__ B; } ;
struct TYPE_22__ {TYPE_7__ HL2; TYPE_5__ DE2; TYPE_3__ BC2; } ;
typedef TYPE_9__ cz80_struc ;
struct TYPE_13__ {int Z80IF; int z80irqvector; scalar_t__ Z80_IRQ; int Z80IM; int spare; int Z80F2; int Z80F; } ;


 int A ;
 int A2 ;
 int BC ;
 int BC2 ;
 scalar_t__ CLEAR_LINE ;
 TYPE_9__ CZ80 ;
 int CZ80_HALT ;
 int CZ80_IFF1 ;
 int CZ80_IFF2 ;
 int CZ80_IRQ ;
 int CZ80_PC ;
 int CZ80_SP ;
 int Cz80_Set_Reg (TYPE_9__*,int ,scalar_t__) ;
 int DE ;
 int DE2 ;
 int DRW16 (int ,int ) ;
 int DRW16HL (int ,int ,int ) ;
 int DRW8 (int ,int ) ;
 int EL_ANOMALY ;
 int EL_STATUS ;
 int HL ;
 int HL2 ;
 scalar_t__ HOLD_LINE ;
 int I ;
 int IX ;
 int IY ;
 TYPE_10__ drZ80 ;
 int drz80_load_pcsp (scalar_t__,scalar_t__) ;
 int elprintf (int,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int z80_int () ;
 int z80_reset () ;
 scalar_t__ z80_unpack_legacy (void const*) ;
 int zA ;
 int zA2 ;
 int zB ;
 int zC ;
 int zD ;
 int zE ;
 int zF ;
 int zF2 ;
 int zH ;
 int zI ;
 int zIM ;
 int zIX ;
 int zIY ;
 int zL ;
 int zR ;

int z80_unpack(const void *data)
{
  const struct z80_state *s = data;
  if (strcmp(s->magic, "Z80") != 0) {
    if (z80_unpack_legacy(data) != 0)
      goto fail;
    elprintf(EL_STATUS, "legacy z80 state");
    return 0;
  }
fail:
  elprintf(EL_STATUS|EL_ANOMALY, "z80_unpack failed");
  z80_reset();
  z80_int();
  return -1;
}
