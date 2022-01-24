#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  T_SRAM ;
struct TYPE_10__ {int romsize; TYPE_1__* rom; } ;
struct TYPE_9__ {int realchecksum; int checksum; int /*<<< orphan*/  international; int /*<<< orphan*/  product; int /*<<< orphan*/  ROMType; } ;
struct TYPE_8__ {int detected; int start; int end; int on; struct TYPE_8__* sram; int /*<<< orphan*/  crc; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 void* FUNC1 (TYPE_1__*,int) ; 
 TYPE_5__ cart ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 TYPE_2__ rominfo ; 
 TYPE_1__ sram ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5()
{
  FUNC3(&sram, 0, sizeof (T_SRAM));

  /* backup RAM data is stored above cartridge ROM area, at $800000-$80FFFF (max. 64K) */
  if (cart.romsize > 0x800000) return;
  sram.sram = cart.rom + 0x800000;

  /* initialize Backup RAM */
  FUNC3(sram.sram, 0xFF, 0x10000);
  sram.crc = FUNC2(0, sram.sram, 0x10000);

  /* retrieve informations from header */
  if ((FUNC0(cart.rom,0x1b0) == 0x52) && (FUNC0(cart.rom,0x1b1) == 0x41))
  {
    /* backup RAM detected */
    sram.detected = 1;

    /* retrieve backup RAM start & end addresses */
    sram.start = FUNC1(cart.rom, 0x1b4);
    sram.end   = FUNC1(cart.rom, 0x1b8);

    /* autodetect games with wrong header infos */
    if (FUNC4(rominfo.product,"T-26013") != NULL)
    {
      /* Psy-O-Blade (wrong header) */
      sram.start = 0x200001;
      sram.end = 0x203fff;
    }

    /* fixe other bad header informations */
    else if ((sram.start > sram.end) || ((sram.end - sram.start) >= 0x10000))
    {
      sram.end = sram.start + 0xffff;
    }

    /* enable backup RAM */
    sram.on = 1;
  }
  else
  {
    /* autodetect games with missing header infos */
    if (FUNC4(rominfo.product,"T-50086") != NULL)
    {
      /* PGA Tour Golf */
      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x203fff;
    }
    else if (FUNC4(rominfo.product,"ACLD007") != NULL)
    {
      /* Winter Challenge */
      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x200fff;
    }
    else if (FUNC4(rominfo.product,"T-50286") != NULL)
    {
      /* Buck Rogers - Countdown to Doomsday */
      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x203fff;
    }
    else if (((rominfo.realchecksum == 0xaeaa) || (rominfo.realchecksum == 0x8dba)) && 
             (rominfo.checksum ==  0x8104))
    {
      /* Xin Qigai Wangzi (use uncommon area) */
      sram.on = 1;
      sram.start = 0x400001;
      sram.end = 0x40ffff;
    }
    else if ((FUNC4(rominfo.ROMType,"SF") != NULL) && (FUNC4(rominfo.product,"001") != NULL))
    {
      /* SF-001 */
      sram.on = 1;
      if (rominfo.checksum == 0x3e08)
      {
        /* last revision (use bankswitching) */
        sram.start = 0x3c0001;
        sram.end = 0x3cffff;
      }
      else
      {
        /* older revisions (use uncommon area) */
        sram.start = 0x400001;
        sram.end = 0x40ffff;
      }
    }
    else if ((FUNC4(rominfo.ROMType,"SF") != NULL) && (FUNC4(rominfo.product,"004") != NULL))
    {
      /* SF-004 (use bankswitching) */
      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x203fff;
    }
    else if (FUNC4(rominfo.international,"SONIC & KNUCKLES") != NULL)
    {
      /* Sonic 3 & Knuckles combined ROM */
      if (cart.romsize == 0x400000)
      {
        /* Sonic & Knuckle does not have backup RAM but can access FRAM from Sonic 3 cartridge */
        sram.on = 1;
        sram.start = 0x200001;
        sram.end = 0x203fff;
      }
    }

    /* auto-detect games which need disabled backup RAM */
    else if (FUNC4(rominfo.product,"T-113016") != NULL)
    {
      /* Pugsy (does not have backup RAM but tries writing outside ROM area as copy protection) */
      sram.on = 0;
    }
    else if (FUNC4(rominfo.international,"SONIC THE HEDGEHOG 2") != NULL)
    {
      /* Sonic the Hedgehog 2 (does not have backup RAM) */
      /* this prevents backup RAM from being mapped in place of mirrored ROM when using S&K LOCK-ON feature */
      sram.on = 0;
    }

    /* by default, enable backup RAM for ROM smaller than 2MB */
    else if (cart.romsize <= 0x200000)
    {
      /* 64KB static RAM mapped to $200000-$20ffff */
      sram.start = 0x200000;
      sram.end = 0x20ffff;
      sram.on = 1;
    }
  }
}