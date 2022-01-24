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
typedef  size_t u8 ;
struct TYPE_5__ {int CR3; int CR1; int CR2; int CR4; int HIRQ; } ;
struct TYPE_6__ {int status; TYPE_2__ reg; TYPE_1__* filter; } ;
struct TYPE_4__ {int chan; int smmask; int cimask; int fid; int smval; int cival; } ;

/* Variables and functions */
 int CDB_HIRQ_CMOK ; 
 int CDB_HIRQ_ESEL ; 
 TYPE_3__* Cs2Area ; 

void FUNC0(void) {
  u8 gfscfilternum;

  gfscfilternum = Cs2Area->reg.CR3 >> 8;

  Cs2Area->reg.CR1 = (Cs2Area->status << 8) | Cs2Area->filter[gfscfilternum].chan;
  Cs2Area->reg.CR2 = (Cs2Area->filter[gfscfilternum].smmask << 8) | Cs2Area->filter[gfscfilternum].cimask;
  Cs2Area->reg.CR3 = Cs2Area->filter[gfscfilternum].fid;
  Cs2Area->reg.CR4 = (Cs2Area->filter[gfscfilternum].smval << 8) | Cs2Area->filter[gfscfilternum].cival;
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}