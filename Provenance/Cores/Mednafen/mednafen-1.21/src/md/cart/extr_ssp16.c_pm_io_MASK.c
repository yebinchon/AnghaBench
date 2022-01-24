#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned short u32 ;
struct TYPE_6__ {int v; } ;
struct TYPE_5__ {int emu_status; int* pmac_read; int* RAM1; int* pmac_write; } ;
struct TYPE_4__ {scalar_t__ iram_rom; scalar_t__ dram; } ;

/* Variables and functions */
 int CADDR ; 
 int EL_ANOMALY ; 
 int EL_SVP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* PC ; 
 scalar_t__ Pico_rom ; 
 int SSP_PMC_HAVE_ADDR ; 
 int SSP_PMC_SET ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int FUNC2 (int) ; 
 int last_iram ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,unsigned short) ; 
 TYPE_3__ rPMC ; 
 int rST ; 
 TYPE_2__* ssp ; 
 TYPE_1__* svp ; 

__attribute__((used)) static u32 FUNC4(int reg, int write, u32 d)
{
	if (ssp->emu_status & SSP_PMC_SET)
	{
		// this MUST be blind r or w
		if ((*(PC-1) & 0xff0f) && (*(PC-1) & 0xfff0)) {
			FUNC1(EL_SVP|EL_ANOMALY, "ssp FIXME: tried to set PM%i (%c) with non-blind i/o %08x @ %04x",
				reg, write ? 'w' : 'r', rPMC.v, FUNC0());
			ssp->emu_status &= ~SSP_PMC_SET;
			return 0;
		}
		FUNC1(EL_SVP, "PM%i (%c) set to %08x @ %04x", reg, write ? 'w' : 'r', rPMC.v, FUNC0());
		ssp->pmac_read[write ? reg + 6 : reg] = rPMC.v;
		ssp->emu_status &= ~SSP_PMC_SET;
		if ((rPMC.v & 0x7fffff) == 0x1c8000 || (rPMC.v & 0x7fffff) == 0x1c8240) {
			FUNC1(EL_SVP, "ssp IRAM copy from %06x to %04x", (ssp->RAM1[0]-1)<<1, (rPMC.v&0x7fff)<<1);
#ifdef USE_DEBUGGER
			last_iram = (ssp->RAM1[0]-1)<<1;
#endif
		}
		return 0;
	}

	// just in case
	if (ssp->emu_status & SSP_PMC_HAVE_ADDR) {
		FUNC1(EL_SVP|EL_ANOMALY, "ssp FIXME: PM%i (%c) with only addr set @ %04x",
			reg, write ? 'w' : 'r', FUNC0());
		ssp->emu_status &= ~SSP_PMC_HAVE_ADDR;
	}

	if (reg == 4 || (rST & 0x60))
	{
		#define CADDR ((((mode<<16)&0x7f0000)|addr)<<1)
		unsigned short *dram = (unsigned short *)svp->dram;
		if (write)
		{
			int mode = ssp->pmac_write[reg]>>16;
			int addr = ssp->pmac_write[reg]&0xffff;
			if      ((mode & 0xb800) == 0xb800)
					FUNC1(EL_SVP|EL_ANOMALY, "ssp FIXME: mode %04x", mode);
			if      ((mode & 0x43ff) == 0x0018) // DRAM
			{
				int inc = FUNC2(mode);
				FUNC1(EL_SVP, "ssp PM%i DRAM w [%06x] %04x (inc %i, ovrw %i)",
					reg, CADDR, d, inc, (mode>>10)&1);
				if (mode & 0x0400) {
				       FUNC3(dram[addr], d);
				} else dram[addr] = d;
				ssp->pmac_write[reg] += inc;
			}
			else if ((mode & 0xfbff) == 0x4018) // DRAM, cell inc
			{
				FUNC1(EL_SVP, "ssp PM%i DRAM w [%06x] %04x (cell inc, ovrw %i) @ %04x",
					reg, CADDR, d, (mode>>10)&1, FUNC0());
				if (mode & 0x0400) {
				       FUNC3(dram[addr], d);
				} else dram[addr] = d;
				ssp->pmac_write[reg] += (addr&1) ? 31 : 1;
			}
			else if ((mode & 0x47ff) == 0x001c) // IRAM
			{
				int inc = FUNC2(mode);
				if ((addr&0xfc00) != 0x8000)
					FUNC1(EL_SVP|EL_ANOMALY, "ssp FIXME: invalid IRAM addr: %04x", addr<<1);
				FUNC1(EL_SVP, "ssp IRAM w [%06x] %04x (inc %i)", (addr<<1)&0x7ff, d, inc);
				((unsigned short *)svp->iram_rom)[addr&0x3ff] = d;
				ssp->pmac_write[reg] += inc;
			}
			else
			{
				FUNC1(EL_SVP|EL_ANOMALY, "ssp FIXME: PM%i unhandled write mode %04x, [%06x] %04x @ %04x",
						reg, mode, CADDR, d, FUNC0());
			}
		}
		else
		{
			int mode = ssp->pmac_read[reg]>>16;
			int addr = ssp->pmac_read[reg]&0xffff;
			if      ((mode & 0xfff0) == 0x0800) // ROM, inc 1, verified to be correct
			{
				FUNC1(EL_SVP, "ssp ROM  r [%06x] %04x", CADDR,
					((unsigned short *)Pico_rom)[addr|((mode&0xf)<<16)]);
				ssp->pmac_read[reg] += 1;
				d = ((unsigned short *)Pico_rom)[addr|((mode&0xf)<<16)];
			}
			else if ((mode & 0x47ff) == 0x0018) // DRAM
			{
				int inc = FUNC2(mode);
				FUNC1(EL_SVP, "ssp PM%i DRAM r [%06x] %04x (inc %i)", reg, CADDR, dram[addr]);
				d = dram[addr];
				ssp->pmac_read[reg] += inc;
			}
			else
			{
				FUNC1(EL_SVP|EL_ANOMALY, "ssp FIXME: PM%i unhandled read  mode %04x, [%06x] @ %04x",
						reg, mode, CADDR, FUNC0());
				d = 0;
			}
		}

		// PMC value corresponds to last PMR accessed (not sure).
		rPMC.v = ssp->pmac_read[write ? reg + 6 : reg];

		return d;
	}

	return (u32)-1;
}