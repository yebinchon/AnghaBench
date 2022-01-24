#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_12__ {int l; } ;
struct TYPE_15__ {TYPE_1__ byte; } ;
typedef  TYPE_4__ uint32 ;
typedef  TYPE_4__ uint16 ;
struct TYPE_17__ {TYPE_4__ stopped; TYPE_4__ int_level; TYPE_4__ cycles; TYPE_4__ poll; } ;
struct TYPE_14__ {scalar_t__ boot; } ;
struct TYPE_16__ {TYPE_3__ cartridge; TYPE_4__* word_ram_2M; TYPE_4__* word_ram; TYPE_4__* regs; TYPE_4__* prg_ram; TYPE_4__ dmna; TYPE_4__ pending; TYPE_4__ timer; TYPE_4__ cycles; } ;
struct TYPE_13__ {scalar_t__ base; } ;
struct TYPE_11__ {TYPE_2__* memory_map; TYPE_4__ poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  M68K_REG_A0 ; 
 int /*<<< orphan*/  M68K_REG_A1 ; 
 int /*<<< orphan*/  M68K_REG_A2 ; 
 int /*<<< orphan*/  M68K_REG_A3 ; 
 int /*<<< orphan*/  M68K_REG_A4 ; 
 int /*<<< orphan*/  M68K_REG_A5 ; 
 int /*<<< orphan*/  M68K_REG_A6 ; 
 int /*<<< orphan*/  M68K_REG_A7 ; 
 int /*<<< orphan*/  M68K_REG_D0 ; 
 int /*<<< orphan*/  M68K_REG_D1 ; 
 int /*<<< orphan*/  M68K_REG_D2 ; 
 int /*<<< orphan*/  M68K_REG_D3 ; 
 int /*<<< orphan*/  M68K_REG_D4 ; 
 int /*<<< orphan*/  M68K_REG_D5 ; 
 int /*<<< orphan*/  M68K_REG_D6 ; 
 int /*<<< orphan*/  M68K_REG_D7 ; 
 int /*<<< orphan*/  M68K_REG_ISP ; 
 int /*<<< orphan*/  M68K_REG_PC ; 
 int /*<<< orphan*/  M68K_REG_SR ; 
 int /*<<< orphan*/  M68K_REG_USP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_10__ m68k ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_9__ s68k ; 
 TYPE_4__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 TYPE_6__ scd ; 

int FUNC7(uint8 *state)
{
  uint16 tmp16;
  uint32 tmp32;
  int bufferptr = 0;

  /* internal harware */
  FUNC6(scd.regs, sizeof(scd.regs));
  FUNC6(&scd.cycles, sizeof(scd.cycles));
  FUNC6(&scd.timer, sizeof(scd.timer));
  FUNC6(&scd.pending, sizeof(scd.pending));
  FUNC6(&scd.dmna, sizeof(scd.dmna));

  /* GFX processor */
  bufferptr += FUNC2(&state[bufferptr]);

  /* CD Data controller */
  bufferptr += FUNC0(&state[bufferptr]);

  /* CD Drive processor */
  bufferptr += FUNC1(&state[bufferptr]);

  /* PCM chip */
  bufferptr += FUNC4(&state[bufferptr]);

  /* PRG-RAM */
  FUNC6(scd.prg_ram, sizeof(scd.prg_ram));

  /* Word-RAM */
  if (scd.regs[0x03>>1].byte.l & 0x04)
  {
    /* 1M mode */
    FUNC6(scd.word_ram, sizeof(scd.word_ram));
  }
  else
  {
    /* 2M mode */
    FUNC6(scd.word_ram_2M, sizeof(scd.word_ram_2M));
  }

  /* MAIN-CPU & SUB-CPU polling */
  FUNC6(&m68k.poll, sizeof(m68k.poll));
  FUNC6(&s68k.poll, sizeof(s68k.poll));

  /* H-INT default vector */
  tmp16 = *(uint16 *)(m68k.memory_map[0].base + 0x72);
  FUNC6(&tmp16, 2);

  /* SUB-CPU internal state */
  FUNC6(&s68k.cycles, sizeof(s68k.cycles));
  FUNC6(&s68k.int_level, sizeof(s68k.int_level));
  FUNC6(&s68k.stopped, sizeof(s68k.stopped));

  /* SUB-CPU registers */
  tmp32 = FUNC5(M68K_REG_D0);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_D1);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_D2);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_D3);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_D4);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_D5);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_D6);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_D7);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A0);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A1);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A2);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A3);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A4);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A5);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A6);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_A7);  FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_PC);  FUNC6(&tmp32, 4);
  tmp16 = FUNC5(M68K_REG_SR);  FUNC6(&tmp16, 2); 
  tmp32 = FUNC5(M68K_REG_USP); FUNC6(&tmp32, 4);
  tmp32 = FUNC5(M68K_REG_ISP); FUNC6(&tmp32, 4);

  /* bootable MD cartridge */
  if (scd.cartridge.boot)
  {
    bufferptr += FUNC3(&state[bufferptr]);
  }

  return bufferptr;
}