
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


struct TYPE_19__ {void* l; void* h; void* e; void* d; void* c; void* b; int f; void* a; } ;
struct TYPE_18__ {void* l; void* h; void* e; void* d; void* c; void* b; int f; void* a; } ;
struct z80_state {int halted; int iff1; int iff2; int irq_pending; int* irq_vector; int im; scalar_t__ pc; scalar_t__ sp; void* iy; void* ix; int r; void* i; TYPE_6__ a; TYPE_5__ m; int magic; } ;
struct TYPE_16__ {void* L; void* H; } ;
struct TYPE_17__ {TYPE_3__ B; } ;
struct TYPE_14__ {void* L; void* H; } ;
struct TYPE_15__ {TYPE_1__ B; } ;
struct TYPE_21__ {void* L; void* H; } ;
struct TYPE_20__ {TYPE_8__ B; } ;
struct TYPE_22__ {TYPE_4__ HL2; TYPE_2__ DE2; TYPE_7__ BC2; } ;
typedef TYPE_9__ cz80_struc ;
struct TYPE_13__ {int Z80IF; int z80irqvector; int Z80_IRQ; int Z80IM; scalar_t__ Z80PC_BASE; scalar_t__ Z80PC; scalar_t__ Z80SP_BASE; scalar_t__ Z80SP; int spare; int Z80F2; int Z80F; } ;


 int A ;
 int A2 ;
 int BC ;
 int BC2 ;
 TYPE_9__ CZ80 ;
 int CZ80_HALT ;
 int CZ80_IRQ ;
 int CZ80_PC ;
 int CZ80_SP ;
 scalar_t__ Cz80_Get_Reg (TYPE_9__*,int ) ;
 int DE ;
 int DE2 ;
 void* DRR16 (int ) ;
 void* DRR16H (int ) ;
 void* DRR16L (int ) ;
 void* DRR8 (int ) ;
 int HL ;
 int HL2 ;
 scalar_t__ HOLD_LINE ;
 int I ;
 int IX ;
 int IY ;
 int Z80_STATE_SIZE ;
 TYPE_10__ drZ80 ;
 int memset (void*,int ,int ) ;
 int strcpy (int ,char*) ;
 void* zA ;
 void* zA2 ;
 void* zB ;
 void* zC ;
 void* zD ;
 void* zE ;
 int zF ;
 int zF2 ;
 void* zH ;
 void* zI ;
 int zIFF1 ;
 int zIFF2 ;
 int zIM ;
 void* zIX ;
 void* zIY ;
 void* zL ;
 int zR ;

void z80_pack(void *data)
{
  struct z80_state *s = data;
  memset(data, 0, Z80_STATE_SIZE);
  strcpy(s->magic, "Z80");
}
