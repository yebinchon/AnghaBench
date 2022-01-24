#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {unsigned int romsize; scalar_t__ rom; } ;
struct TYPE_10__ {unsigned short* regs; } ;
struct TYPE_9__ {scalar_t__ sdram; } ;
struct TYPE_8__ {int /*<<< orphan*/  m68krcycles_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 int EL_ANOMALY ; 
 int EL_STATUS ; 
 int FUNC0 (unsigned int) ; 
 TYPE_7__ Pico ; 
 TYPE_6__ Pico32x ; 
 TYPE_5__* Pico32xMem ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,unsigned int) ; 
 TYPE_1__ msh2 ; 
 int /*<<< orphan*/ * p32x_bios_m ; 
 int /*<<< orphan*/ * p32x_bios_s ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned int) ; 
 TYPE_1__ ssh2 ; 

void FUNC8(void)
{
  FUNC2(EL_32X, "sh2 reset");

  FUNC5(&msh2);
  FUNC5(&ssh2);
  FUNC4(&msh2);
  FUNC4(&ssh2);

  // if we don't have BIOS set, perform it's work here.
  // MSH2
  if (p32x_bios_m == NULL) {
    unsigned int idl_src, idl_dst, idl_size; // initial data load
    unsigned int vbr;

    // initial data
    idl_src = FUNC0(*(unsigned int *)(Pico.rom + 0x3d4)) & ~0xf0000000;
    idl_dst = FUNC0(*(unsigned int *)(Pico.rom + 0x3d8)) & ~0xf0000000;
    idl_size= FUNC0(*(unsigned int *)(Pico.rom + 0x3dc));
    if (idl_size > Pico.romsize || idl_src + idl_size > Pico.romsize ||
        idl_size > 0x40000 || idl_dst + idl_size > 0x40000 || (idl_src & 3) || (idl_dst & 3)) {
      FUNC2(EL_STATUS|EL_ANOMALY, "32x: invalid initial data ptrs: %06x -> %06x, %06x",
        idl_src, idl_dst, idl_size);
    }
    else
      FUNC3(Pico32xMem->sdram + idl_dst, Pico.rom + idl_src, idl_size);

    // GBR/VBR
    vbr = FUNC0(*(unsigned int *)(Pico.rom + 0x3e8));
    FUNC6(0, 0x20004000);
    FUNC7(0, vbr);

    // checksum and M_OK
    Pico32x.regs[0x28 / 2] = *(unsigned short *)(Pico.rom + 0x18e);
    // program will set M_OK
  }

  // SSH2
  if (p32x_bios_s == NULL) {
    unsigned int vbr;

    // GBR/VBR
    vbr = FUNC0(*(unsigned int *)(Pico.rom + 0x3ec));
    FUNC6(1, 0x20004000);
    FUNC7(1, vbr);
    // program will set S_OK
  }

  msh2.m68krcycles_done = ssh2.m68krcycles_done = FUNC1();
}